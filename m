Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A18F1FC111
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742657994; cv=none; b=uZOz7WxPdOGYnI7oWCas1Wh5MbVwPr6mYOHaDkPAUWjQhTu/zLG5Kk4IM380HwRo53GA/g9kjzC/5//Na+Ng555+eM8EaYevDL8nFZY1U+2o7Mt0K5CSgRJ9t3Av8TP6lxk2f9+mZ5O+zOeY1/HfLjSQsXdKxeSKnWnjGg08Gvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742657994; c=relaxed/simple;
	bh=+kYI+rjapprjgMeJaEtcfFDKqbrcz7vN/R+vBIZUnIs=;
	h=To:Subject:From:Message-Id:Date; b=COp6KMp6TgNR0q+kpEDSlWtpQLOF62SAtoaGBCf+wex72Cxy1NeuJtoV4DpZ8IJUmk6sXPEveOsV5rt9EdvzO4KkDDMEshjt8Wuh4i/fOb6U2OmGJzVcgqwWB54TgEkXVksj0oZTEe/rIKnSa8RUExh/ScP3WBH3UpGeBUloOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUW8jYOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUW8jYOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A7AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742657993;
	bh=+kYI+rjapprjgMeJaEtcfFDKqbrcz7vN/R+vBIZUnIs=;
	h=To:Subject:From:Date:From;
	b=MUW8jYOgruvXKUu7SmABZxnmwP5Co1wCoQRaEXRXwz2qDSsfHsNzdgl4+Q7w+S0xM
	 wHkRrAfrbAE8I9Erki+ngXyDSk5/sV1STIUB88Sawo6nzywvJehWyhH78x3tUt5mNN
	 33aqisfUuuUpaUpfdiiZxDFFtKi2q5Qc0X/hxI0KwF5PygO+nLVD/VBXRwFEJ0ko7Q
	 Ix79/oXJMFSq41T6V/mqbVAMovJ0l1XYvcZzoWdUfz0DKQXptMLVqhDkh4QYYUuFWh
	 50fqTbfYtIuptw13n2FIw9LWFSMq9ZwzZNAAt2RBPi7SXgjURstvONAq64xMDaaK4q
	 /ffDhfet8N3Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECA6C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265799363.29483.15997499940597063618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea248636e790b75617026523997c345c46f7a1fbb6acfd8fcbc82a34483ff69f
Date: Sat, 22 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742657993
