Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C42E1519BA
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744454994; cv=none; b=FM/+NFvZDpfL62hWPgmazAeM9sU/5kCl/QMj9DuTWGVXFhXQVK3eVE96s0AAWZdng86FTX/jh64Gv0Lj0IuEnubmeJaS7VILjA1KRFjTMmd5FnifCKhm/WVPc8yivk6gNm7GzhG83+w7InApSOP87HBI7PUbWixFOFdGbR4/QZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744454994; c=relaxed/simple;
	bh=5UBd8Cdqxo3DkHjRsdZZaHi+4rVIQtCsWWNcIkAAR3k=;
	h=To:Subject:From:Message-Id:Date; b=QWEh9c6Q6BvI1h9zdY77i8Y3d2T6V+oTIFVdLrBlhKBoCiknH1Xu6jFSRd2v36wCncmjTL7yORk7cNJLgefayqr9yb0sSEYCf75HflEhpgEQz8i+/1qNyOT0di1TvS7AHA6ds/zf/LhIzyO1izlY666BREodgGUzR6yiwkvc2y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUfzZstz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUfzZstz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B698BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744454993;
	bh=5UBd8Cdqxo3DkHjRsdZZaHi+4rVIQtCsWWNcIkAAR3k=;
	h=To:Subject:From:Date:From;
	b=qUfzZstz2MbeyuCWCDXuwUskMAESUi3jTxPbPd4FNl45xCYk8q9fs1R1kLo/9mN7m
	 Z3TXVDERTQZ106uyC6Tuc/qn2GQf9iIL6Tgzx2ZNyoVONteCkSYp4G/dR8Y6kitk4f
	 c45eAdzNAPrLc818Wb55bmaXFmeMSvVp+u04p62M1B7VVs/OBoJKxyWJqFB5SK9S17
	 nW6KsUsAe5XfQQrkan72CVadqhv9KQqfyUGYKdM1fb3xm4u8TjDqXx9tapCtdTO/ma
	 G0zjWf6MOUJPh2JOAIZwDrLwDCseNtP0eRbqPtcvlZW3jC+Cki00TB2mW5wsXJs+K3
	 o8U7VvbmLkPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A091CC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445499362.7847.5480418777501778467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4615c27a13aa365aa5b3e56441208a35ca7577011991fa1e5f181d235562e26
Date: Sat, 12 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744454993
