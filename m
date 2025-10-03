Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C066442C
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759515594; cv=none; b=BoRv78kNrgiNl33d2zd2cxWFnV/aTD6ULkoNO857e8ABgd5G0rMMEyfHj8VHUhh4yFu5O+Sk/BsxgKvf8sG29L1wYfxA4NSCC87FgMGWbfmbMogn+utHWIMLw+qhnkTz/XoIZfByxTH6XC9yE2S3ic56BxFWHcznucPHloX0srs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759515594; c=relaxed/simple;
	bh=ZKS2BCcrFm1lUTkg9q/93fWy8LtvgltadBSAMdqhFMs=;
	h=To:Subject:From:Message-Id:Date; b=YcOgJVHu8Kl2BgEbPPfN//nBS7rkXmIEwACaxwCsbe25Bpu1uwrpceVS2rQJdg4V7z7PwtrrJkW2o+can/T0WFxPRJ+RaGpGu6KyMgcY5CikZ/k502hY+P4VF6lPoYs3acaB6lzKSawGgx+A4YhyeR5UszTQM2lvAQyuufJb3bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj5gmDmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj5gmDmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5068C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759515593;
	bh=ZKS2BCcrFm1lUTkg9q/93fWy8LtvgltadBSAMdqhFMs=;
	h=To:Subject:From:Date:From;
	b=Uj5gmDmfsS48mmshrWpHs5/ehr9/+OG+44YSG083Fmh159QlXiqnxTjYJVGkJLNE9
	 gCfWadtm5ghBgaTejJSLdF/qKsyBMwmAZkZLCkFPuYDHVW309aT/cC17bfa4jHysxM
	 XRZ8FAFw9Ghoqcc9VITys3JIwdS9DmvZZ72TqYyytXd6T4cHReUydKznxjKYOlLhO4
	 KkNx2Jp5iUTQQD7DvwUi/Zj4l0wzAcZc4UhC3EWTgz45Y6LoaibjiuI4Qm6jk5uuAF
	 3uPO1cjUIU3Sk5a/ZaVufAI7NHDzx3Cd2+2c4QUqNnEWTeNwuqP+pdyCaBkpZRtsHW
	 su4Do3VWEMbtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE5CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951559359.18009.9902277304525834925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9392463889a040924564d81fa59ff6d8f66f5062d88384d2a275229175df6521
Date: Fri, 03 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759515593
