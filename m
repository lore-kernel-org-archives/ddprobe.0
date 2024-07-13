Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8036B45008
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720866623; cv=none; b=JNCV6o0gSQvqsVTNpil7WKagQjNl4RViMS/Nn6gX1uR/a6mMtvzG13nOTbieoCeGkrtzeV/8b4xRnCocKcwzKrDWk6smPWn2+qfbawLcuoCTx/Qee3VMZ5aYAsyPeRE05GOHXo9BLng7SFHtDBphvf0mnu73uYzwq3JGyXTv/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720866623; c=relaxed/simple;
	bh=lfMD/t+5OehsKaNlN0tpGfgQ+VSIdASCGq/px8DBRVQ=;
	h=To:Subject:From:Message-Id:Date; b=IQ9tQhd/4d3oyP3Z7wN93uWRY+q9+dTGR/x+xgb1W8a7G/dj1TAYHk5nT9+7nZeauQmity8T4jKwiEe2uLWZBDbd+ogZBdNhoBgAOIH1iocj03hnsyoiGeoYttpKQgbUUI1OV8dScqVTkYEFVDXpM44/XqE96GufTpwUTxHBqd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEAintb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEAintb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C3A6C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720866623;
	bh=lfMD/t+5OehsKaNlN0tpGfgQ+VSIdASCGq/px8DBRVQ=;
	h=To:Subject:From:Date:From;
	b=IEAintb2nAuR12ZyJJXitcsm/sV60lvnw/0xmnPQaKv7SyZo01TyFLb/jwVHdIqCq
	 LKVfH5UpVzAY0ovYRKqcpSyAJXzLK2zurQPrrk0QQ1jDheavMSBti3/rZlYd0NlIdq
	 MMPWd7324yDKDOQx0iSjM04gk9x2DSDhVF/ois9WWqogeV1xmLHYhXHh1O+z3/v/NL
	 Ps/VdprGRcChYvjaA4vZ6glM4fM5aW8eYIGC2OgCKW0+e4/kKV0M+hgwkRYmBNGvIN
	 S4KQhZCR747MlycaGzvLSmSs4BKX0yr950Jm3RhJ4tbp8xwWaW8we3s9TRfe51qYuQ
	 zxkfCM0ms0I1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2941C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086662286.4303.8863483398730733239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb121cfb0926bca4830c4c0e5ccfdb90a6d3e1fa274ee98a1140609c54e32541
Date: Sat, 13 Jul 2024 10:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720866622
