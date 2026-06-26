Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA913AB298
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782461854; cv=none; b=HRHQrh+HVeF6+xoEP4E28aBFSJzhB6PvsUurMQrF2CKtOdPfKF99uYbcZpmC2DuXhCL4CnIJkgFL0snuDlfD5ST2iCD4Ufk291Bvdmf/YoTf7vdCGlpdxfQ20fi9b8p0YlLbXCPcBpXqv1Rq1oAWDj2utMI58D7M+uTHnkmifSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782461854; c=relaxed/simple;
	bh=L4q8cvb5/TYhYXjKLU07176fj9Mxl4SFS/kPjNdXLGk=;
	h=To:Subject:From:Message-Id:Date; b=lNXbFJA2Y+f2e/62b5aVOP4t3Re7w9UBPlxML5NhF9lermj6dTh9+cIpz1MCOAQSS+of7yAmc1jkyGYPjV1YR4aJUVdMEnf3p8fGYx7tBs5lX00xEKk+5tf73dhMAP1LId4h1Cy0FdjVfbRsZkerHJTsMq9aqI3JkHj1LLnT7Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW/UiXJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW/UiXJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BF9C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782461853;
	bh=L4q8cvb5/TYhYXjKLU07176fj9Mxl4SFS/kPjNdXLGk=;
	h=To:Subject:From:Date:From;
	b=fW/UiXJsMoxXV5lFmNldFsjJ4DRdadggPO51OhIix4fvfefcbKS7qQmFVeIFYx+ar
	 63fdKvB9rbzcImBFa0iwrbJFaCSMYW6jvMARlJxA++wi3glDCl4L6qbZu0cfD0NNPP
	 w1pG9Eu5pyTTncVCLyiC4RW5VEPWb0RW26blAF+eQt+mezj9pswP/JXfAOtm67eJlg
	 XHnY6HuDlHk01PgGTsb1IylFLWS9M9Fp7EfjR19gteehDMRuc3Vrwqn+o96Qr7/471
	 UJBFyydwTLNgyd3zw2fvl59eVFclJK47WhZfVRu10sKYGuCZxKUtG70VxESQ8HRzU4
	 ifmoW8INhjWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD96CDE00E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246185375.10515.18152001287098703283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8675ef7e286c0c69105c31616b148c9135c0853aeab23aee8c989c7ad0d2fbd7
Date: Fri, 26 Jun 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782461853
