Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721C2328B4B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776870454; cv=none; b=TXV6kT1fNcM5/+w6yCIkxbQy3R+6FZV2tgohLgSS6Y6dAe1wOmJJUyK1BS/HXzllhPPcFpXPdMfQFgOsYyiN0R6SHd0K3wMdsJPX07hT6ax/FAk6Om73qs7y2dmV9ci0CAxpMUdJz/SNEwHBFzotwJTiDqWTjlBkjfTLDY42fwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776870454; c=relaxed/simple;
	bh=ubKi9iG1XAo0lGgfg4gBbHMroWw5K2aSLP3Xogkq6FY=;
	h=To:Subject:From:Message-Id:Date; b=QRHySXkyIze+JolN2g1dgS5ApFBF3lWdXdeT31uo1201CA6kVyLKMdtGh0QqOD9bR2pZCr+bxixcxM1GeFcqMBNVKPP1i3umFfCBt/pXEwgyjrvmMkIGhu/PQ8il98WnbKK2mQi2ou/s+akx16Sxgwm7/TzG5DDFCRxeaOO2+ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5ELecuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5ELecuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA7FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776870453;
	bh=ubKi9iG1XAo0lGgfg4gBbHMroWw5K2aSLP3Xogkq6FY=;
	h=To:Subject:From:Date:From;
	b=c5ELecuDeT72m7tGF5agi0An0XPiw1sLl1Vj5WBIB/Ze8u5E1J5unZ6EjPOhGHgNR
	 +UpyF2OxtzxZLrtgEfB7LEpC9wWBQYLQgGhARy80Uyj0p5DvFlEzJqwTIbkQgVNZBC
	 fvmRKyXodAXnSka8//Q9qnbihhELnPFGTnyKRoIBDR52XF7cHP+LipK8AgbjwqeQma
	 wMP02hAMne1lxqlDogEKkswpN7hJTRqFQFzi1e1CN2tmhZdiPxpRYVeKd9GE2zOusn
	 WYx5G0XRLPRXMfX1QTg+rPwmQ+7mOdxcp15dkHzuM5EoX03qLadoJuRjdcLaOAFh2C
	 xBkJJm5wD4Lww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD077F9EDF8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687045368.9720.6339626764809695170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5ea461431722962f07ef99fe299cace5dff6b54b110ed0bc2646c5ad199eb7
Date: Wed, 22 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776870453
