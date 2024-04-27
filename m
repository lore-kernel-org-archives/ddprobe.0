Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7881E4AE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714249943; cv=none; b=gOJcxftt8Vqug6lbsaLgW2eN/kJHcY2a7Ig4d3Oy5LsO4rhPX+ZGLgnLT0eOpLvz7Jus6bQ8Kd5ydVfqCuVLAzOnK/NhjJjrAY11foynmO7CixL5kbMFZBTKZ6GGGrKQXCRg5ecnOR22VSRCFdnPV/yofI62F5u1mUDsTP4aHSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714249943; c=relaxed/simple;
	bh=aXliEdUFCkoGQBtISOQJcl8PBZ0Aifk/YNYhsIexLvM=;
	h=To:Subject:From:Message-Id:Date; b=iOU1GaQxhzGOVmzh0F7KC3OlGKpERnZPMVQcVb637/G//DPg9GyJHMmxXQ9hcOYK9TG+iMigBUkvoGAPyf8eehUsqfL+kiJslFaNaaEBXybVcSOgXDPICunSAIqCIFPPKr6GglocvwEn3FkCu5svgQBkOqYReCtCFaJw/MoYZ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG+PThsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG+PThsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADFEC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714249942;
	bh=aXliEdUFCkoGQBtISOQJcl8PBZ0Aifk/YNYhsIexLvM=;
	h=To:Subject:From:Date:From;
	b=OG+PThsqK+ysvEavC5ilelZ+tsSCZcjH/uPQo+jjVu7u5/AKDfNc6h+BRLm2+0rvx
	 8b8HaugF+vNa/kAdPuyaAvkMfux/Pr+eB4feaBg/cV3XIUsSdJl1i+CCNy0LzDeb3N
	 z67C0CzCecRD3qS7Umcp9ybjJ1azdxSMtIP7+1c/P5mFCKM+uobGVn+Y7CS3L6wucz
	 fvJSd4Q+M44Lb2LV1HMLugKfA/6sq5L8BEdnTBqnOBKYdtt4GbrtV4H2DfG+z20YCG
	 ursdaGGstEQL20gRP5/S2IFJd8zDGtpw+OKaqP2LDRP98P/vrGihcx3Ab8bEGHjYUN
	 soD4Euk4wLysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9641C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424994278.15555.4026844262302763272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742b06efeca111687db2a959582ccde28ca99047ed2c7205b816d34800b90a4f
Date: Sat, 27 Apr 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714249942
