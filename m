Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC781B394F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760327994; cv=none; b=Rfc+utdlcGbz0X/QaBdmHDAEZqLGk0dSPhRAWh4HkZWdka1yygCQiWDFpZeTDnMMPTJdcKQpWH33j3PCyVy3uuFE+YAQDeUr8sSIF1dVK4nwYCrtL1LoU+iEJ67i0AHKbpqWsgYUFjaNXAGX3me97o4r+pTOqVWmrLtA+YBsvXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760327994; c=relaxed/simple;
	bh=OSaSvhwo+AKtc4QGT09phhw3t1KtMqWZQTaGijtIJgM=;
	h=To:Subject:From:Message-Id:Date; b=NB1EWDS1XmCpvqFgEd9D+EwF8ISaeu48PKYrusfYcex96axojnhAenYZ0i7Tee8Feg3VBA64SXrPTVI7kYWyXDo/R2e4hTtqR0jUq7lbQl4O650oPyppNAtSXhrF4ibhf5yPyBBYi9J3cAsPJMLyUOaD14RgULD6UdFGAn3zrxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmkUhAWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmkUhAWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760327993;
	bh=OSaSvhwo+AKtc4QGT09phhw3t1KtMqWZQTaGijtIJgM=;
	h=To:Subject:From:Date:From;
	b=LmkUhAWwi2rZMOKMac1Yncms5qwngBiy3JGo0iu/SfmQhq8EnPb3IuQS6gaZuUPl+
	 K61FJSIhxbbmiy0EPFpLut8h07/jVUGM7Afu3CtNdAKE7d6IGhCUqwWJd2vIhCpM7J
	 9HIHC/9348p1N8wPlZwCGEjjGYL2EJIqYheZGK4WO6ZB+BT9UwZP5IkbbYGnn3Z6JD
	 h2+LwOG71lF9IJDXFd05mxyNeR/slvEIKru/BCaeMil/y3xkQr+VjR+qce2G1JuQzo
	 8llRNHR7IjZN96YCHgQdpMqw/66oW/Y1clt1Bqy/E4cKSoCodXgjspCDaqYfQdSGwK
	 0eM6GY5IxywTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E043CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032799357.447.8164149613998808201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7da02db22099efda97ea592782fc3fe0a122e92896b65a394f2c1beaf14f23
Date: Mon, 13 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760327993
