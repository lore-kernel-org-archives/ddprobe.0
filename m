Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6251A681B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782059794; cv=none; b=JmpqDDmqEnrNabvnZ+Bx+MrnlfahNpUC4wjm7i7ulk1HJ11nZ/D05XyD4Q+9C3Z1NjlOjLNCQl+hNmfrhhkW1gOLZ7igzhRS0sWqiswoy7D91ajE+7/2LiAxun53/TwkOq65LArBKD02mhoRSN0LqYjphhTXqdNDoKCs4rIULWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782059794; c=relaxed/simple;
	bh=x+BqyS+ACWj8vaD/2f7kaI+pEFcqEuwRTOFI0RGQwVU=;
	h=To:Subject:From:Message-Id:Date; b=Hi9pqBVMzEOR3Oj41pIiVt10RAIWSKxywioOi+KM+3ozfDv5KcrKKG1+xYSTNLUrzKiWklIp4dKcTEtyPyOkKLCGXXP479M7GN5dHgT7Jqp2UQx0AH4EK7tOBKVNdKNRdaDdrGN406dyaeKGDfl4rVvQ0wdejASvY4qbb9fz4Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruiv7uVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruiv7uVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782059793;
	bh=x+BqyS+ACWj8vaD/2f7kaI+pEFcqEuwRTOFI0RGQwVU=;
	h=To:Subject:From:Date:From;
	b=ruiv7uVzXTfAjEcyBdUTZXKPcT2QUeNAv0SmpXpV/72aFeiJ4SutuVsBs9HDVZT8h
	 T9hYgoE6J24LLqv4fZEf0rlFA8CLi0dQJBLrgeNyBkV1YC2Jgb91IyGYvCMXhfp5pI
	 tl5pAIWfFWuT5352gY+iJimnKvzrAEbUmGf1fRJfVQoa/lRoKx2pEXKS1gnaVKRvUx
	 YpbMVgRh3PuD48RNt5qx7fapa0dFGI7Lzxqt3zirIJJi4tWukMOsviYyroc4LvsULq
	 uNclfSpPeYSAwFkMNMLmKCAOH+bfF7nzrcnLBZ+48/6jUiGUbNQL7FkiNssdt9LHal
	 oKgfVyIRZO7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E1BCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205979370.328.13342575363521435080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8d743b66df73f9357e56312eb6c73c353f10d5aa6db1745450b3834e6925f5
Date: Sun, 21 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782059793
