Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C57624
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729390554; cv=none; b=lDKgexicMzretJhHD7A1f4TnIAdpypN63lAFQ89v5t4qvfMKjnUBaTOrrGHqb6W4NDjAUfb+aA7fReOcBkLCmBAmTNuPy5Gzh43sgCxKi0ToeNA4ZLfS4h4yxo3LSnQnsLgFX6yg1rNVzncyhN2eYsFLNY7K3TyDE5gqwCUZL30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729390554; c=relaxed/simple;
	bh=N1CSLEexFKDlozA/hMY4z77x0YECGRNGe2MOrY4t+8c=;
	h=To:Subject:From:Message-Id:Date; b=tzOZH0HEpgFLuCWYI6jQoa5u6HmkE2kM9x/GLe+5U/gNsLODI+xlrdaj7JPyv/Jd1ZJIVjdBVTvDBLRIbpBsSxzeaT52Tmniqc+vNvetEL6dogdlZjGBg4sUOXxB4om/GddKh7ES65sY+24iXh6LDgLhp64rE/8zlSdHKBmZPYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcnwvqbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcnwvqbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AC8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729390553;
	bh=N1CSLEexFKDlozA/hMY4z77x0YECGRNGe2MOrY4t+8c=;
	h=To:Subject:From:Date:From;
	b=AcnwvqbZjClHZkqYmMqjeNbFTM9qWpPbzT58zCoNS3Cc24qUozeXwgyfIlHLN/vj2
	 ILjQRI3b6S+cCfZBWIkumyDgta/YXLUF0UheEziSL0YebsOLzmoE+z7y+W2vLAplnj
	 NnQvCwWyF7NM6FemwIIFeWgDAait/uZC3P2qL8f9YCpMN2x2gdDXBzLy9aE2kEIb/F
	 v2fOD3HiYatBllikNyNwttgnjO0J47kFipgv0bf0rNq0Ytng0QngwVD476jXGmQJbW
	 TAED5pFB9kyFXzBR2NFCTxHBs3d4/J2gKIhQntBZvxaT9EB6Dg4wRt5Ll9k9RoD2ge
	 aoDz363e6NtUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C3D3C931
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939055358.16251.5586020715813260071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4716124d2686992bbb7ff3da817198dbd24c059a72ca065eea4896f55feca417
Date: Sun, 20 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729390553
