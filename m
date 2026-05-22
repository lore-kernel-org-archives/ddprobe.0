Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792113A3E85
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779453754; cv=none; b=D+bo55gSY8WbHcOV+zepeqoQYljbwMBTKLP7j/+gUSZxpGSPCg6sFITdggU9C0+ZdFpTdObAr/HAW619JEpkz1A2NmTXTEXxoc03o/wnTz9dG+tBKiTJV3YOZ2X4kKmrv2DxjEzCVtr52FW4Vy2mPXViUouSIfGWbA8lnzoKdvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779453754; c=relaxed/simple;
	bh=bbTuI7bESfyZm/WaJkCEztXZpnVL2iGstcBOV5IRX74=;
	h=To:Subject:From:Message-Id:Date; b=iwkb+mGsAraCjfFi5uU+L0Sj8lRoG+H0efQgqmH5AnhWdxdBiLTfSmNaBCgEjp444tDiUkv3lKW+3Wwn8iro163gPFM8bt3RHaQwFn4LQLYamCuI8C1Keijs/U1VxNufFXMGomSwjRKtshvB9vuuQvjeL2irY0neSZhizWWF5M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV9tfOQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV9tfOQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3405C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779453753;
	bh=bbTuI7bESfyZm/WaJkCEztXZpnVL2iGstcBOV5IRX74=;
	h=To:Subject:From:Date:From;
	b=QV9tfOQov/p42z+LG9xs+qFxN8RQUr8sTMsHGwgk7ov99rTeJlO4qjiv2KUlOQ/v9
	 BGUQDc4LIhySZSXkqdqhwFl+52KvVaX/A8FxfPbuP0HXJgc99GjVUwRz8US1VihMLX
	 tdc6D8u5RIkSk/coICS3ZBWv/dHPaoKSDY5Zokt/OIzmHIvOcYZTtOMRsEeu1hp3mZ
	 tQheTJOXPNigsc4mGnakWWjMyOl6pmwyOnzdDmvhFXzME4XPp1tTHzKhWKiVQ2eCFO
	 6ZhgEC1WRn95Nv97pROfIyrBsKbg7Fwp3uqzzSmKZn91uRORKfMf8VxrxmJEIidrKE
	 iTLm+gpXdWLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A894FCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945375368.20961.17556770094906305107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5f47fa4463ee888672e565359f6c9df39f3f93310d7384374fcef53ebcfc4f
Date: Fri, 22 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779453753
