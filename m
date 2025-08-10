Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D9CB660
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754786994; cv=none; b=ao0Rs7CHAVc0Y/uWDb0o6s/+UzCG2q7AQCTCLcmbOFl8e6Jc2clR7/r+GSsCP8QpBjgns4MRvYuOZcgzXSjVZ/LmBKpkVdEv4EtXvWzIoDHXaDy1ylOGr0daFUIxNG/UoeWOnKdcqDgPC49NKLUXST3cvgM/gP6kXfkISpoqbp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754786994; c=relaxed/simple;
	bh=N2aEZ+KW9wTDyD6EkAvZrIAw4/hV4o+iqiko96YBMz0=;
	h=To:Subject:From:Message-Id:Date; b=jQszikMDQrtpnmrp2MHONv611pOFkpYF7yl6maZoNJF+1+phiGhTuJRxDjdxmKhiE2cqr/n9ms+8Bi68AubXY6X1NUde2oukid79BfkhbCmTFV0Aje2mvCet8QKMRRajMGwwiRWPRzV94ovWgU9ugLbmJ305wQ4w1AZyifCHrQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYw3SrY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYw3SrY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA91CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754786993;
	bh=N2aEZ+KW9wTDyD6EkAvZrIAw4/hV4o+iqiko96YBMz0=;
	h=To:Subject:From:Date:From;
	b=EYw3SrY8XWmFCvIE861YwtHAdbZc798n0DYV332/8fpSrRCoaEYxYodY2VYDeTjFN
	 Blq6GXnIGOyp7pDB62B/cOQyQ13cBfRjtorE156ZIl/lLNrJcDRm2CdUT3NVjYPVjT
	 w9L3Dyd6nwVYpM3roqUBXeZXylMDK2T0RnbX3KrbBD7gD57mXQcvRzrpLF9aTCjO9a
	 qd+hGCWM9U7bSEQXQa09DwtsLOOBpn3tIhGpglSBc6cEc8sEOq48Rm6elZhb2tN0v+
	 /mGlFe0ypJZH3WLCjlQEJV+3j04S33A1p/hd0yiIS5ztbKnn0VbdPGwPNBSXMxEtSb
	 sAOvDonRGWCyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6DC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478699357.23124.26191848787318476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543206a05b73971a9a9ae2043450bc90811d637ecec41c5b723be58f807cba49
Date: Sun, 10 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754786993
