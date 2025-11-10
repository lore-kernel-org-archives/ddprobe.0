Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DCF2EAB61
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762806594; cv=none; b=Tec5uPRnFyou02w3iuiV3WXl8oFHtnrSNkswpF0oUG5Cnppkw/FJuhac/an7Ub4FH1sH7DQUvJd/9KeOYvM3MkTi2Fgj9gTc1M9PbqotPmEM/S+2xrSSjk8e63fD4itCJmHbnsDRB7Htl/uOvPcB6eaWVjfghYhqRMvOsu5dizc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762806594; c=relaxed/simple;
	bh=83ol0hVDS4IzLYm7UDkRDW9HYeNM9JpfrdfBLdZtXVY=;
	h=To:Subject:From:Message-Id:Date; b=jSz6MpUrd9lN6maHV8BVPLfX+wvCmWzwu9XvjCamfCHhCS2zwzPLcbKRGKndDqB43nuk0rjEDvg0AHeOkilMSgL+4CxZYicPowCPDDhdQeKkARX4/26FwRfhd48qi58dPiKYwPfaIcQeWLy/Avfek5YI8F5CgwCBYgNWYtX4ViY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTtJUqg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTtJUqg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D409C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762806593;
	bh=83ol0hVDS4IzLYm7UDkRDW9HYeNM9JpfrdfBLdZtXVY=;
	h=To:Subject:From:Date:From;
	b=dTtJUqg8bePL2FI8spDF6pXD2wsXdwptY2GPFYIKBX958SR2tuVTDU7WEItlFyF9+
	 Ues3QMWNOKvuhwLRF+YjSdd03L5O/qwqXrhsJdYtXUlw9D2RvtXgwieHUpMutblPhc
	 QqKa5mPKpNCJ+jKVZMfsiwDpaSdrrE+EYMAj/jrkiu3wpLwI3EEV3xDtfSGu8Oc7Ub
	 tvKBNWQ08rBclghtZcy8ACT6Qz0XWTFgYn/0sxiRb0yVViN87wNEWDrwu2FZBGYqqs
	 4R1SuhfMFwqYKzxqqlhvn+2AbfsROrIaLZt0WNUltMwOXv2cyYW8DmZt5FRDEdVbUK
	 HwKzjtIpXV5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADDCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280659358.14146.6357295944641232310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35e185e2609bd236ccc735e2af547aa59020e65287d16a78d66f9d09e7830dc
Date: Mon, 10 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762806593
