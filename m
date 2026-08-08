Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB2829BD87
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786189834; cv=none; b=NoXUCx3Ar4BB/rZhBJHd2D4iRSnkhVs85MFJv2HFXKhpIs7TVfdaTuu26MqdqxGTePbP9Jv7+wMgmq4PcUmis98oTLXxZlhS+HDXlCgx3SIMOwqquZTrUZ3x6NBMA5ay/bb4zSyg41q+2kp3Iwk1nN/6fA2r6o6eTrtseClrJF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786189834; c=relaxed/simple;
	bh=dMd8rIHQobv0iSj9xIrPgNekwiPVeq9hjwvOQ641/qI=;
	h=To:Subject:From:Message-Id:Date; b=I+oilzAR0mzk+81j1E1vImJiYfg1viDcg20zqgTRbVrG1PSyK9BPVf8+BhKgYQ3sV+/xwc6pDlafihA25HcQPIAzJwcWDEowWB9vB8YPtgDkkmyLlklglRZvwgOxt5r9M5LE+QPfKQ2X4y/va71sIq74AJRNXvZXY0zM4scRscw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmvxGjt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmvxGjt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D002BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786189833;
	bh=dMd8rIHQobv0iSj9xIrPgNekwiPVeq9hjwvOQ641/qI=;
	h=To:Subject:From:Date:From;
	b=MmvxGjt500EZsvXr/YaM3LP+dgS1TiD9Lav7LR2FTSNe8zzY5DgeBoHlKIrMuEFMX
	 twHKeYiCF7AV67QM75kcLZz1My9kbAPpo6gVsnETY/hvH4uGn0QWFhB7hZfZ1Tt1/i
	 z67oFSYII9fG3XnVIwyxopn5nanI3L2mj2FZ5wprJPYdXTpcq4BiGBc+KLn9Qfd7xE
	 4thsolotE6FtqRiJsJ2ZGvob8UZVp/YmmBoh0FgsUN5G9e8FbOftb9DCkOxCw5Lbxu
	 SyAixD4mJ0wz/aKFAZb4RIqFNxWKOsRv/mWQM4GaZlQRkW92Krc0Fxd+qzM6ghRTan
	 eKQy+5aJJoKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB614C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618983369.16870.3300621714167162707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08aa380958f2fa4fc4272f0db11ea94290c8e1e2b188df3115a006bd97d71880
Date: Sat, 08 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786189833
