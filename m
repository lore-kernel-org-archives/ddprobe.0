Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F752196C7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748897994; cv=none; b=JD2C+bgPKrNP7vh2DZJp2JtNPjsjBaC1Hpu37NuB3acwb97gWjRGLby4J0Y4IOltXHPTZa1ksiR9quTYz2D7Z12YoDXIdOk7aZitWUMhZ1/a2rAEsSEVPfI4OdDzJ00mfooScO2V591wntqhpuw0cqyhctJkkHNiUJ6Qg9rRMGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748897994; c=relaxed/simple;
	bh=uGpLMY74NX6+MbCQ/S1WmASJr1aI6Ue4BC3Iy793GTA=;
	h=To:Subject:From:Message-Id:Date; b=UAI6XwHKOM5RcNO+Sohbt10g8Lz6g5iRSJxjhRQqDUBTBj05DFiFQ/ay+n+q+TFkSBn2+mXATt1br/myPMATyxzFRGTqHGaompqnWLIItJ0JFtXbSNO7RT70IZ1QeemmpY2+Su3R7CiJi6Txf7Sn3NTthRSvbF6CI3Cp1HzoxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZGTT2j+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZGTT2j+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5375C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748897993;
	bh=uGpLMY74NX6+MbCQ/S1WmASJr1aI6Ue4BC3Iy793GTA=;
	h=To:Subject:From:Date:From;
	b=oZGTT2j+KJqr0quGoH+qsxTApZQIDO6yYPHoNKki/9ebq0bPYSgJto9vj+Faifh4Z
	 88MJFrpZB41lzhT6yVV5MYDRpmDYwafB9ZfTx6k/8aW94brvczm7JpSG/B8U8SmFKH
	 MUqhkKiJSqJZJItT6mJ1N1loV6d1MWjr4ug9SssqDf8H4Funyl5IKM4wwkEK9mXYQR
	 /95lScH+/yAkz3utG7JXhdVf2Pe2IXcTv52ITEBJmrT9jA04MMQq7IoymC4mYLpMqc
	 F/3/EAyDv8oHoSCn4VjZV4QhBGKQTiGfJTiVZzWp7xaNsUEGqi6FJe+OqMHV/MzbNk
	 FNW5BEnu0d0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889799358.1941.15953871576469492116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93423370ee2aad8dfd90dd4a409e83cf62f9c3d1626be58eebd098051b7e8c6f
Date: Mon, 02 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748897993
