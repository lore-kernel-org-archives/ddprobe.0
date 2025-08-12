Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113302CA8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754962794; cv=none; b=KH/G+yRd97j0ZvtIuSlHD4Nqlw4VPdoaYMZEL+vM9LodIs4Hg90h5a6OCOhqVcZZkCkOCSrqjM4kTQIiU6lUVimFQ8zL8On+1EJqRSTQlanKlsLzimY+PAWFgSN+nioagYm5q5+yKxOwP1nq7Z0IcWZhzYUFJSpTDTbZh49NBnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754962794; c=relaxed/simple;
	bh=NgRMSKHpX4Vt07qOS6Pr1Kp/RHK0Ha51ECJ9zM5x4Ow=;
	h=To:Subject:From:Message-Id:Date; b=LXIWnWgcvtmjXSuNMsTVPVQ5K1/ni2AAgisH5jDZowX1KheBHnwvknkp06lq6DpMIPvL69+TBE2D7Ovdicl0W46yDu+AQ7eDcOLOGf8y6VCpdZMKjziyEe81kLpfDDksIn2L7Od8AGBAahy6sc5qexoCxsdsXdCsFxeJXJPJ2OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LleYuqy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LleYuqy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754962793;
	bh=NgRMSKHpX4Vt07qOS6Pr1Kp/RHK0Ha51ECJ9zM5x4Ow=;
	h=To:Subject:From:Date:From;
	b=LleYuqy13iXm9JXGBuMuX1FcX5JCIKReWrLZacbOexOjIi5a0xI06dp7iE1wFYqxU
	 rQ+EZpaFRfGcFs7sKvi9MSjaBogkwrUjIyJk2fQVwQz8x6rTBc2R9jKayZyQJdOonR
	 058+zR8ROtZ6QE0tDqHE2+1ssybPatJ88Jw21u9tRiuDTfCifkVRA46nPWYrmEE/Lf
	 bCsUpNl6PCx3TM4Gd+9HmH1kCjm8l5OCnBrrJxEP8TzMoH3033tAA/NXTFsDPLIUch
	 kMuuT6M3gvCAh8fKE0lVlg7l3QQrTlO3Qmxa27vXKGm4GWXUBiF3mSTFgmVWKRbPSh
	 9sgOcg+QO042Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91229CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496279357.28589.3097752708952726490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aa35d4cf04c4ea038e49e2517b75515c1206116de555ca668867db85aa0b49
Date: Tue, 12 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754962793
