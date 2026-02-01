Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27073944F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769960034; cv=none; b=odC+y0hQeK3cheybuEtRmvA4h/270/lM8LVtxUzofi/Cs5s1trn+zE0d1LzyV179YDvnWPDCMlwxXRAkw6pjuFY0ktg4MNIrJKmhejRxEV3AYwru7SQs2mQWIJld96k7HOc93JIg8Gaw+GS8r1Bh8r2UjVq8JxIUvZ66xhaI+AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769960034; c=relaxed/simple;
	bh=3osT7Vf6FKapYBQKVN6bMmkJZ6gSiIYHmkZLSELbYsk=;
	h=To:Subject:From:Message-Id:Date; b=LqKQCwpnzSgiLR9L18kl8quDRF2XUSLCnK0qk5ZZ4GGkqD48JRkpT4xKcOeraeKt+Tg7cOvxzBfJPvQLtkN1uAPowmYFtCGNpHIfgTBgiNFO7QFjDeVJDG4YJJEntGnu+JOEOnAJK88w0KOl7F9i0zDpAlQ1R712uGXpLlRFgg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL7+ngVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL7+ngVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769960033;
	bh=3osT7Vf6FKapYBQKVN6bMmkJZ6gSiIYHmkZLSELbYsk=;
	h=To:Subject:From:Date:From;
	b=LL7+ngVdAJ4WEZqbYdzEW4SnNIghkeAaefTmE1xjA9+kQq4hU2moVvuksMWOJPBXa
	 /iQoXNA6RUIkFyoLyKVLi8cBrS2SIVDOZLIyMFUP7uqiKgvHa2cqn43ekcuSCNNeXn
	 x8OytwcjU7BgloDZo+0HcRdsSRxaDgu4t4ajVTEaFlZ8FEAp8MCwpOd3BOM0W2FhVV
	 up7D6PBys1ssvDLgvDMzvlmJXj5HZsrVY4mDK2e1AanO54dogb/VWiAoTmkWLA8V2E
	 Or+Iw+VUFjAvdFG0ceFESGtJxa727dw+LMW7MRt/7lRC+OL77t7QnvtukspErb5MXI
	 EYUdvvqgx4agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7AE6528A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996003359.29846.9298058696969488699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed005aeff944682ddd2ebe05935307ff6a01f7cf224375175939b378ecb8418
Date: Sun, 01 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769960033
