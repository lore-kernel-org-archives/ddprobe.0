Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3FF7DA92
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724541354; cv=none; b=QW7NUZhxp29TJ8F3d/yehqY5vsFvYB3TDGMh435yHHZySqnZXNZ2kT5H42oAmdKDJuOBWnql3B2fcZ1dwJdmC0a3ETqkgBrt+BPvX2hdwyB7Gu7CDRQcdzjFFtaOdgCDcecPXQ77DiiGypnMUf7cRPOgC4GvxqZVRdzjAjbMVfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724541354; c=relaxed/simple;
	bh=xP9cm+rkbvrDBhhDWVNj0O+Jfa8ibppAOKHH1EAHhaU=;
	h=To:Subject:From:Message-Id:Date; b=Yg+gZCdcIm6dXtID+MlBPet805A/LzCM/2cdRQWdDbWnLdvkuZoFy22baCjIH0+Iw8KsDj+UxwVJB2Dy5M0CrbHPu8ehP/+NN97NDYu0SI3juTlVvNia6mPbXQBMvGa9lcOCfuev3DMrapo0f6lPPOwidhmSPDwcHtFUzC8n7wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6bJx6wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6bJx6wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15EDC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724541353;
	bh=xP9cm+rkbvrDBhhDWVNj0O+Jfa8ibppAOKHH1EAHhaU=;
	h=To:Subject:From:Date:From;
	b=k6bJx6wbHMD85sYcxD27IpPJurKF135FE08II00qfiiWGR9XU7JPSO+/tuDNzUfoi
	 jUy/KsHmcKAAiiJDcCl1FykGfWbSW582dBRUyG0xLB7IvWnVeLqIyLr3a4EAj0altf
	 xZAVj/+eEtgJif1Lh4wYFcU1dfRuOwAWty8eDRK+jnfbvs9PdU0J2Nlgv2zoj0GVcP
	 WZB4d0DDPO6w+WwVdIrCIZYkHNjkgt4jjUAWbZU6U+vwcrn6oogZxkbEjC30FKQfxN
	 y44qlkjsPiDOE0ReYKiIQ/p057+p4pLLiJjiBPROTbU+9v6VRwGyNICwaJ8MnajsS+
	 7XEkMBkHFoNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5AEC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454135359.10817.10096901834488597128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca3cd404c198305fb41441b84dff34c71f48cefe2485285b867cc69e15b8cd8
Date: Sat, 24 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724541353
