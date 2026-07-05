Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B4F30E0F2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783283914; cv=none; b=RWUDUU4bjmFU7zodJFTtxV5NjmrHU+Mx0BTIhO02RqOuuUplzH42Nk+c0m5X8GBd7wj2vwPwm37+7waKFZr3HYSxsR8kW+1sdqBfcFVskIUOoTGCg4kOCvPmpBwLTMwYcArD0gqDhCySlJR3HbgvHdNNMZr36+NnyBlVNiWfS8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783283914; c=relaxed/simple;
	bh=MYKmUDwHCga2hVg4pk1DLBSfZfYWfpDuN01S9aI/Qog=;
	h=To:Subject:From:Message-Id:Date; b=mSnQ3hEOvgulU4h1sNv3OcKH1s2J+j1v3udzzjL49RGGtJECOkRwFgbGmO54qvpu5I3ktQ3T4Q4PuplFSiZU/nypJouWD0rSIexE1+/kDtxYbmEbuLzDiv6Yv8ozcmQSeibU0L+JB2wwBawYUA2qNqgUBjJTV63W6QtEJC4sY+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4iHEucl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4iHEucl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C00C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783283913;
	bh=MYKmUDwHCga2hVg4pk1DLBSfZfYWfpDuN01S9aI/Qog=;
	h=To:Subject:From:Date:From;
	b=b4iHEuclZpzSwhPzi3bBWZ4ksIIUywVh0ir9jRPgbKeGnij8Okxrh9PUm+IEHdHX/
	 mrzd3W8ZPABfBkGYkT6RYDkdtMzIU66rDXthMMD+HjMOnvBisuAZmDbiFqNg01gRFq
	 Pk1bTovWIi05Bfr1OozKMQJXMlBDFIk829ETqw2PEPYaOFn7InzaoFsbawu8s0ONt4
	 B+1P0mW6Gb4cqIk52sWk9nkRT+Sf4dleDY+rPqiNxCjmG2oNDoYYc+a70oz+fRtWsZ
	 T7eo1BPQT1HcFqiwGHmzedcWJaObsLLzbBopgs1Bf+Lar/hfprcpRPKF5ws9/zp03D
	 Xiy9nRZqeChRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE681C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328391368.19119.15099981802689236557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480745e89951a649ca11771311001155f313e08ea8d5a46576e019a21874328c
Date: Sun, 05 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783283913
