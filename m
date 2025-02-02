Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABDB2746D
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738502754; cv=none; b=aQfy+enrMT1hoOBnBHZovxy5UYUYesB7SAeu63bp7Tyo0ylOBm9XHZXYuAE69GnfUpFcCKzBjWCkDMTCQ+4ANrDC03T/TdpYZqAfBv75IoJcYwnFjuKdmnKnwCmVedjX14Uea4e/wsVlR4CguLCTHTPikWjR+nzscoX/DSmI+Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738502754; c=relaxed/simple;
	bh=QIgN6EoDAGAm3AIyMJexUm4gaOmHNlFoRDgRdQo8lhY=;
	h=To:Subject:From:Message-Id:Date; b=EDKwaa+bmf/CiT+I4Oci/xQFxgjBYXoOBc3d3JPmK7JofHwf7yuBDh7R1PwF79LgfeNBKVqvV8NCUSZRdiICcpHF9QQUSE5rxOZmdJM9AmFJ1uG1a7qMJJiJfFXk2N38AhoCEFPggfEKX10bSQezywpECsU12Mx1FscmSqG64Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6EG4ogx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6EG4ogx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BF9C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738502753;
	bh=QIgN6EoDAGAm3AIyMJexUm4gaOmHNlFoRDgRdQo8lhY=;
	h=To:Subject:From:Date:From;
	b=k6EG4ogx3j0qe5bAfMdEz9oIZseoZy2zDGSWIY4VE3ulQbTJmQgAE1x0YBWWkshX1
	 ll+Om5UGsKUw7CGt6jBanBKOHQaCTy+BqN6uulPtpPbpsNqNIscMCzYLkRwBr1bEal
	 Ub4MfMeNPxYMX5AkFBLH6kX/wxd2klk/RWYfBVc1DFa7W/RQ9HUfkMww2SCkHQf5Cv
	 iI6gspca+5cjNdkCZbhbIoAnu3z7Qc164h+w8tOdFjjImXcugzui5/ZiFrJC0/4kyS
	 QN7GHg5w65M1NayeMc0tEhDFoVjWiFvm6cIrTSixETPD8WzLtzH+vZhKKAKcC7Kty8
	 hqhG+0AbeZZRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2DAC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850275360.6421.2734871255403353249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95469923522a7458bc7cf55c1868aaaf6ff2f910590736c94776cdd42ab437e4
Date: Sun, 02 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738502753
