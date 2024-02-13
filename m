Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D63A23774
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707820697; cv=none; b=UdnIU8fKgKZGhsxMzamlBaEfAlLDw/3B/Afy96+9SMFDkE7lfg+l4y8WcMOr4c7EFNl1CGe3H7KtK5WCZAWsI3xF4oo3qqG0ziGI91IF40tIbPHv1E9tvtqMqdztjSfS+ECBfgB6rYZZYMLBrnk/aQDa5nh9fJWtIdypsJ9rDTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707820697; c=relaxed/simple;
	bh=SDtp6oZiM/mDF2KZBZE9dk4q6p29BZSryOvDiRvmGsY=;
	h=To:Subject:From:Message-Id:Date; b=Xs98PaVxkRhNDK0iRbkJ+xokeKDSr622oMaXuMQFvc5u2JEnoLo+tLMkjeTwElg9ICExklmaJph5WUVCm/bFYe4XeXysQvOMXZUuwTb3EpLqNXBOVOSVLNUdKLjAGvvnhI2/xy+ile2qRV5c+NT6wOqxflgmftdrbCaQvlA5Z+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX5aQ4Iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX5aQ4Iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F196C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707820696;
	bh=SDtp6oZiM/mDF2KZBZE9dk4q6p29BZSryOvDiRvmGsY=;
	h=To:Subject:From:Date:From;
	b=bX5aQ4Iyo5uttOY/qnUfQt/x5t+2xg4YJ6DCwnP8r5DtNg3h/8UtjBil/OpyVhBl2
	 zfeboySMlTPSZ1Ea7ly58kzSw96wokR9VFfeUMbRdPJd+vGfZzaQa6K9Vx9PLhq1Z/
	 UN1muRYbBFb/VittOn4CX7vyUe7kEskR2ZV0v1VKNWDFNzts2cxSn/w+Hx/eeCY2PT
	 zutlPnNexpihScJWsKtf1uLdZRPxvrSUCqv+j56YZcf46uKzafPQCs9TjyNtGrNqUP
	 cdJrt7QPoig2CB9a523vhdT2j/y540iueyPOtuAglqFS4yyQEi0NADV7YllRLEbUJN
	 NI1AVWdM6pWmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CB2C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170782069641.12910.17152323813578605895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0fd04caa6bf89f5443ba3a1a98e17440268b0cbb7a794c38d89d4edaada086
Date: Tue, 13 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707820696
