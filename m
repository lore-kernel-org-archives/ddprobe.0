Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31272367A9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744376393; cv=none; b=eHzjXrs6KJoAA5hQM0BN3L2X3DLZVpL4QhpVdeUoxGmYUQpn1D6WLtkv0EHWv6WnrbQclFgOoGuRKp6fU9OarRGZGD0rxCHVX7tFMHYC5tm3++GX+1aWHv2BsL+wxfREl4oKARRCmq9/tVjvEr4gijOUFaY51x2rX7dRKVUz+Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744376393; c=relaxed/simple;
	bh=3BN8uObSbjf7jAtUUnN2V5KZdBJBhab+bG4EBIax5Ss=;
	h=To:Subject:From:Message-Id:Date; b=HkF1rWyaGyMeU47r/Fa8lYuNeSi1u2rqnT22tTjaFMGHDv8wrtRKR3++296uARB/FdPwVnPt2wb2+2qKf4+HVClTjYSxRgGnYOLbm55eT/PjCSRKdkxR9V2NI5dcm7GLisFwjk2iTRD4+qt0op1TQhfHCV6zMGN3yFY/jY23D5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+oP/s9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+oP/s9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2031C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744376393;
	bh=3BN8uObSbjf7jAtUUnN2V5KZdBJBhab+bG4EBIax5Ss=;
	h=To:Subject:From:Date:From;
	b=Q+oP/s9XLf95+7Xrhwo5JXxupTU7g8VkNO0nZPGI22MPjkGR+lxgW1tkrPf/hauFt
	 +LgOdIcA0f/et81DrIW5e/hyEbzUmLam5PeWLUkMi/h2EjEuDdG97JLB94FqnUZNI1
	 QwN9T7mRvIwlgu/mnMWlflrNcbTlPWywp8I49z9jC7OaGhRxvScLHIdFiI44EJdING
	 TLuw3erYSvsR2x8gra31mi5kbuNV/FOwmRd2BM6+UA/FacF2tPsQ8ODGpYj25zaX3D
	 I0epjx8jc/tBa4p43Ad1RodGnOHhdQUYzOeNY8pCjFn2i2it02viYV3WbM1GFIZoSu
	 vmTZmdQtIWQ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B4FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437639358.10550.741240497284421651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaba1fabe3afef4e5fb2e8c04227b8e44a8a7de6e73f77219bd032c87da51cf
Date: Fri, 11 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744376393
