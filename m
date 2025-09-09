Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CEF32A3C3
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757449794; cv=none; b=b0+Xm8SnE8mZ6qvdF3HckFPXxlWiHIUDSaPNYTTfPy4hzZUFD325+PQfSOC2qBeIWMPSSKnQ9prKWDoLRYZdYFl7NTZVY3NrBR0oBeX01jEW4fcDRLgvmyskoXjnTUi1Yoih8ppG5+NMyr5L3SGs3rMmhDWpIWu2dZxfRuVnc/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757449794; c=relaxed/simple;
	bh=azQkBurQkCGIFw/tmFA3+6jrW5TyEt1ct3VlME6sqdA=;
	h=To:Subject:From:Message-Id:Date; b=VqqWBqVB206PCU6wCpO/GQqac8xtyYtX11roLuh9ArmtsKyDUhuUqqMb10Ly5dtxmbJMSAe1pk7wlmTPSMo8H+ldxsZgL9Lf9ZiCC8fzytBGvWPvg2T4cx9+jQsaOSk1HxNFO6r20u7cVx7DVff1CrDdtz5n9jt7ImPkMQkI4ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt0Tc6X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt0Tc6X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757449793;
	bh=azQkBurQkCGIFw/tmFA3+6jrW5TyEt1ct3VlME6sqdA=;
	h=To:Subject:From:Date:From;
	b=Gt0Tc6X6VtZHmQ9qBW4PoAyHbtHajdzQiV16yqMG2x+VSo5KFEVPWPnAY8h3iVXh5
	 PdFpf/w1k+4GkvBMeuXn8+D4pqNRWsPNCzMj/ruRGRWzyYC3NTBwIdOARS1whmg6Z+
	 nok2pI/xEocjpParPETu1HDbTuwitX7G5kVulfPU7GykQ3NWf9fLLhPbFla/BvlAJ6
	 ZeZh1rm8/+lBSCu86Nz/aFvjOMmbmHY4XCbYnXgaM2Uc+YH0Rb6lFbZcjqh6Et0pU6
	 GvDVCQHKLqQdob8yU5686CPwOSBFyNA9grgnUzdQ+TP+LjibaQ0i9dnqmDoTOK/C8Q
	 XyTs9BkjEDjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90147CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744979358.10892.7197886055579004866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268307456af8334002c46357e29b8bdab98b282aeff19442dc390e66dd752293
Date: Tue, 09 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757449793
