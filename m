Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B91FB1
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777942054; cv=none; b=A6BDdniQniS4CudSaI3UhWiD6umUg2wPqGKcmXFKM81GH81E5WWUD33qHB/eo25f0TsQ/5vkZ6GiVEtzUPKDwwu0BEqA+j4p4UI/bowPFkRGOKbgDjtj0OMiEI6Pnfn9Q32byFBj8qKkiP2c1o+2w3VC3D67eNifFO95VfdlXg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777942054; c=relaxed/simple;
	bh=XB75SUnSw1/11QfAdorE1U6GSFkZ4BoDNMjr7TLgKjI=;
	h=To:Subject:From:Message-Id:Date; b=CwTWtppFYyaT0TfOdaVTHL84GGYl1MgLVY3WNUOVYL5MYo/AJF66wRI/uUpqUVNnhSLECIl2nKO1th2NZSmVHK34T3u6ipj6ERaDvm2s/i3M7DoS2cAoaLmeL8FnVY8DubF6CYBRt+vUALGLPl8fW+4+SXR6JUZ5iVva4cOQwuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9RVh+Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9RVh+Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DF4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777942053;
	bh=XB75SUnSw1/11QfAdorE1U6GSFkZ4BoDNMjr7TLgKjI=;
	h=To:Subject:From:Date:From;
	b=e9RVh+NpyHYBVmRx7aO2AUS313ngtBeLKPrPQrOP5V8+JiPD/h+3vIephRrdMqwFp
	 wlp+c8MGSByNHmTUb3eH3bPBwQCOS3lURVUcHsDUxzUYGeGslNqfq5pNT/vtolj9IK
	 2u5vvuW2vGEbLbrBGlmKdeZ5zWHFgfMA2ORrJhUPpkmXbUW78On9bn5M8Uf6h4ZA1p
	 VTt/OeRuRb6R+V7kbYNym4SLRxomv1mzNqVvm+sCbkVMH5o8PSs4wCYJ5HtOUp6FXo
	 GQaKbmGg0nS/TxCIB6eBSh0aedsecBB39hQwrlFlU4Ljo5/gHOw4/XHw6pozGBG8Ve
	 mI50hONRMSmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD083FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794205368.8231.5250029128813364254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ac849a71cc4486800ae262836b84934c6841cac3962c87f9b05dd360a51b5f
Date: Tue, 05 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777942053
