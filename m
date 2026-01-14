Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0136BCEC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768406034; cv=none; b=H+L0/cNSwQAj4dz2QMuAXtV40SNRHPOyABkXFKn6h2K6uiAuJcZB9rRG3xPKFlQ4wqjz0FEecfPY5B+2sZtiJEJKJYotz0y4bvXkYM6doaUcZ5B+Uf37ZVg1gXdoWPiZf3stjlo1kFuw5Nssgbrtps1u5Kx5Ot2q5UIMcUJpgKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768406034; c=relaxed/simple;
	bh=3wbec4p+6k/HLq9mT2/2hnSMo1kJXZ5INAHBrG2ZxOM=;
	h=To:Subject:From:Message-Id:Date; b=SaWiC0zFG1OdSguRQsVGdk/MACOgW0XCVpFKMwMTLdc48/QbzbX8tV7iWAGm9AaSN8z51XMvu4OGEpa7Rqev3q1zne1nkQvbZI6lDDPC0jsJ78QfNri+SK9TCqBnLKaGYYjO4CMo/k/irUq9yjrJ8Hpk0HKKPtkQi3dwAHzaQs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGM2Cxtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGM2Cxtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1370C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768406033;
	bh=3wbec4p+6k/HLq9mT2/2hnSMo1kJXZ5INAHBrG2ZxOM=;
	h=To:Subject:From:Date:From;
	b=qGM2CxtnP1l7ih2c8ekXz/G2UhWmd5EIOEK9mahj3Fa3GtIcVSI5xaJhlDxtbqG2j
	 is3ucmvBNotQvWs50D9aQY2moO21Ap9eIvtQ+lkFTGvD284b9o6UWkDgAHuc2KPKwp
	 EQffame9WZOG2EM3ISvWCO1/MBBo00KBovh+YUHcuBdn28HW8Sgnv88Tx0+h9S5nPf
	 OBG15hND80pxZFdSuE2ZDYG68FnZTJ0noQl/oJniJDjkaxX0xuX2ipHMJqZ+xF1ERF
	 aXJRcrYf3kZfz1GlYDsw8raiyS9KauWkDwvuBnD/IVrw9EKjtXqnnAzhHSpWW09vOH
	 TMLp90WGXANbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA0D37E5C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840603358.22996.16901206054980670148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee5bd456d1267b6c29e0fa5b4765620e2c5ba2bc50ed55644852ed4607a359b
Date: Wed, 14 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768406033
