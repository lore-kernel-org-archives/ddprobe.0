Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C326AE4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753585794; cv=none; b=PlHZPKe7/0iFbhGMTpIjSnAaWKi09j8Kcses8PT02TkMwlHuiuZoJfLJNJib1N+p8tP85urVYhrbWq9+Hu22IT4QwxNiSPyHKnwwbNzofh8HsynbJVPa2XRPwIxrFXpna2qezkD/+u3JO2VeM2bRpeOuDyHIAc9FQGkkPimhdyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753585794; c=relaxed/simple;
	bh=+WE3OGgcdjucsLUtXb3E0rpfK6k6nz/OSrvuL/0Fo/k=;
	h=To:Subject:From:Message-Id:Date; b=MFMdUZIO2bkD8YTbSNR8eymbfktSFdX5DqZdfkEeZFP13pjURcuznbS/2hGkXylm+GnQwzljEh2R9ukY2+Z+rYPWkfcfN2Vh+KKAsiVLXwdSRU5Ej8AbbN3WjQgyx72w0WQTxxy5iLEprpO//4cUF82rv+ELsNWrtBfOWql0m+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4r+XITk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4r+XITk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5042C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753585793;
	bh=+WE3OGgcdjucsLUtXb3E0rpfK6k6nz/OSrvuL/0Fo/k=;
	h=To:Subject:From:Date:From;
	b=f4r+XITkrjsN5AsEuFa7jqL2LZB/CInmtbVS06pSx8KyudQpcRXhb2uHcgfunoZbF
	 D5Vb+us2CtvRvwVqzJRmI1iTNoRcmTvqFIiv9GZPokCKg8pyrxIhFJpXZ+PvVHeu6O
	 wYAfHUxCdOankUH0ZQw8oD5vOs6aPmZjdUpP98riMamyFQeO6MOJVPv87vSVCBSJjV
	 aSs1MJ1Y/aEy08vbuYriPmbwsWeVZJk7Mkzq+ySP7ag8krmntBmkPVuEqJVzWu7lwq
	 xfi0nyvIC5yHSjjeveimfrkFs69kqqm+3Quz6Zh1y1AQpEcJvoaIYjtXUkOaJBsXyF
	 IihDkJ+3PNFyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92789C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358579357.3365.7783391479469330032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d6d90bf5eec74189b7f0036e1dc1e3ac756a2f887b967efaf66e50d134fc68
Date: Sun, 27 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753585793
