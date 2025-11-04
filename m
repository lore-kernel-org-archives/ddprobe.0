Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6F623AE87
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762226994; cv=none; b=Fs1XyOT0CoEcnGiJyD162zGUgKeta5hW9wYzblWYhbCcpSh7FqKnnS4Bu3Sj3FXxSvIVDyJFEAzIqOmRIEMGW2Ui/bzCwWhda+7MP3u1LBcAMT1GbbU6AtHI8A4TmA/Xshq1cxQZqnDJ4i25bfI765voLvnKlVKAsBTGspjovgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762226994; c=relaxed/simple;
	bh=ueilnW08H6YFS7FxAtwHKUAse3RMpwyMSFm38SRAsRk=;
	h=To:Subject:From:Message-Id:Date; b=lynGJ3uACYGbU2zJ14SQciV93IFTwWtEzw0RlzoKs6CBOdpyJyj1kE+PXZ/KxD+BrP6vCjuALYxAh367knBBSLuKqJJ2UhI1qHH47jODVS+XmUsv3LnOftFkvLz9BSoXdciiUtUM5Z42XnXFGtwIK2d46Aer4To/R8c8XweaVB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n64hRvP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n64hRvP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF706C113D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762226993;
	bh=ueilnW08H6YFS7FxAtwHKUAse3RMpwyMSFm38SRAsRk=;
	h=To:Subject:From:Date:From;
	b=n64hRvP7obdlsYeMJUCk/FghjTsfxQBIMzPGQ5iR+VGI/V7yY3AvqVX9AYOjmuyyT
	 JGNQOA0gBLr/Fi/IC3sZd2Y+frFI+2PcomSIfjgoL5Bnzkxw+mWi8VR5rVeE+Z8O51
	 hkgubySfoZBcPkrDt2Agkn94c0/WxwOnwsaK2VjvhQeATnASNNSCpYpNW6Ino1/MUU
	 iCLiJAR6KEWD55H/HvXKAizevbykp2LhnWCPXlnhMXBz/6Y2mmx0s/EYccKLcegjm3
	 HwukZmgU6MfPxblVYcRgJXuwY4pKlGc+uTKS9KebC5xRDRBVoqpLoJvqaLCW4PcmTp
	 +lWizuD4yUlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F949CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222699364.24686.11896304522655161766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf49fe2618d0398bcd32a658159b083d910492024243c5ffdbdef3b7a32d35c
Date: Tue, 04 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762226993
