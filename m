Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7121A94F
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746023394; cv=none; b=sbN1AKPVy2iqUzRdDTl2qlmtpiRSBGMZNE1RgkJuAN7xD34ckjWkXNojiLSfWBsnN763aqOH3u4Yuk9/SAPFmB8pCfpd8/rFg03hdZpts+xJUtkPKZqVHWa3do4+XdfHwMar9XGB27th9YrSru2VL8+O1Hj0KlM9vjL7WlhTj58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746023394; c=relaxed/simple;
	bh=pcqeRLGaaKCIoC4YBh60La3dxAj+mLbFiIkwm41bFlQ=;
	h=To:Subject:From:Message-Id:Date; b=f96jvwWqV34At/hnVOy2UbbD6+vHCQmok4sxgYeWc1PkuVFnnFOfapdcLZ8LMLUl4hX/NbfhpkXCraldlplWTSdhvrWQL9MWnVMVaBFafhYOWrXXEla64aUvzVOKDEN5J6WwsmLt0ZnlGP82+GRrqk6qLlcPVQBckp71LvhTR2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OywfNWY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OywfNWY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9927C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746023393;
	bh=pcqeRLGaaKCIoC4YBh60La3dxAj+mLbFiIkwm41bFlQ=;
	h=To:Subject:From:Date:From;
	b=OywfNWY49W2NNz0DnJFvDv6ao2PTcdrxkVsOiO+qvk4p5oo9+3rcIvA+UzYXusp0H
	 Y8tLDXltwCCoJhWJNb+nGWxSPKMNEJKHNqCpDvJcUwFNytrvifUiPM7addPPatUc0M
	 h7XHk9BlXOdF+96BftpY6zjFHR6ln7E3pc8rfMoR4zuY/vBLp1tUaOLScj+jGHq6Aq
	 /lhcmXXep9hy2oZapLG4G3Fy2AlI4eBcwQC4FAUz4rKRQ+W5t7v7QqwRXgy5kmGwRk
	 1Im4eE8PRM7P7uL2kLbVyhd3Qm1i1x1OyijaxwZXGhcFc/SN/6+EsMDQ7FYnXC8h0l
	 2uSpKAaApRiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D77C3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602339360.6383.17377511779063308139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77324f5ece18a15a469935cebc0ef81c06881f92353b71ea8f60ede36899f699
Date: Wed, 30 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746023393
