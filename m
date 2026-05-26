Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3AA304BDC
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779785554; cv=none; b=JTpkFpOmrQSq7ul9bfhdlnkFeBefYdPKknYEwGLx2Gi+lVe7CN1knkD/kn4YyBrFtBA3dLcRM4gPTpNlTOGApXWzyrIrPRz+HesBE30Qfmy96Vto8aHfnt5kO5mzFpas3561Fj4NgTZLccQEaGHREZPLFkQCxJPcSHvjErXsiVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779785554; c=relaxed/simple;
	bh=BpPaDFrL9YtaroBTIIca0nyoBW2vUaf0egXUz7tppy0=;
	h=To:Subject:From:Message-Id:Date; b=YL2qVAqQH5K8X+T1s9TtOWoZB5XEns36ClYYlUsN4a1AC3sslUmmXaiV9QGAK7FyMoBQ/WkBBP7FfpV2nsA78MutI7BPaaijJAo5XjXZMB++NP2PJlYPFVUtIeY5OKxTb9fZNB5fFbJUlmfjKl0f3z5aH8ksU6zvh0HBdTTP4SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNw/UGVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNw/UGVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CDFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779785553;
	bh=BpPaDFrL9YtaroBTIIca0nyoBW2vUaf0egXUz7tppy0=;
	h=To:Subject:From:Date:From;
	b=LNw/UGVBhVWyt+BiU2Q50qjX7WGBqNXM+VbX19AS3AhrmzxdxYDuDbdbA0GbfV8gO
	 Rg3V/tr6gr67IGBAt1m9cB6GgykNk7mO+qha9rfzTQUcxTb1BoTk1rs9OXpE8qli7n
	 ef5eisLeoE21no9oSfUOyXcIEv3pOPUom7Vxr4EuJoDmDmnjMGI4r59i7gOmcLMfqV
	 RhrBgHKb3Y2DJc+q3+h/LdwroIeRn15yI45igg78WMMBTIUFHwzmLMEr60IpNCnd2y
	 nm7B1ibXQV6hyEUjBw0ARw6mrMlOKxGe/bpCp1ikOuv4PNwl80OcTtmSKDJuAr0Xdi
	 2ZswvgFIJfhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D5CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978555368.31266.11766418789113512966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dc484507d81f230903bd587b37150b6bb68a9ec431b4e2150986cf772f9748
Date: Tue, 26 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779785553
