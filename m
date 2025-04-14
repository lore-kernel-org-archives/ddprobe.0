Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F134192D6B
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744655995; cv=none; b=t0IVFjQLwG+M+NMVSc3jmFZR6aNCDkVfjt5SuTvDSuk6ttM/Gq01HKYdqk+Q0M8HxCbozTUNhW25ufWgC92FjFdpRIDdrguMSlFdm1KSWe4muc+zm0tTixaW2acTQkZo6pXypgFF+5xB7U/+9WWaEAfdM65K3q302F7B0dzeWtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744655995; c=relaxed/simple;
	bh=WTzkbhoLifnNxQCBLwWx/W8hXcyfv03d8uKrfYcF6mM=;
	h=To:Subject:From:Message-Id:Date; b=mxXzLwwfRKqROAoK638nAIutdyqlGT3QCMO2Av5ZqxQqhQJF2F5DYuMY/4aJkKlAk8JBVbvdY2REBa0bc6+3jZbiQ0oNi4QQOtc31q62rff0vALVR/jP35IM0kTosviJN0GGPHIxN4eLBnHLQInJ6sS6mF2Lo7QWRO1lGqfWbA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpqrwU67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpqrwU67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0380C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744655993;
	bh=WTzkbhoLifnNxQCBLwWx/W8hXcyfv03d8uKrfYcF6mM=;
	h=To:Subject:From:Date:From;
	b=WpqrwU67T9mxLBUp//z4G15WsoDK7tIK2i2pTnjgqIg5bBEz8qnWmFK2OWMOdRHKx
	 hQ0SXkFnRoNhjkqivPXZyDuc75n/l9Z4RsJjHobA3OvJSad9fi5DOInl3V+W5ggQsj
	 Jb0mfRN6qIj7KmhL/OCbauHSNmp4e7DUueTV+lO+qoPXTf4Ao6DK+BJ+hXgCRCqFX9
	 Y9mCXMSOw4xiywbZaHee1KlQr5+FU7Ct52p1Jl94wrMx8SlRq6/8Tgv6Kp/nAH0Ruz
	 Tx677cRwogTWEVIDuJy8Z/kWKBSMAYPmf1eQHOju1oZwobJUVut9pHq3aKnA9ZxI3p
	 VqkU5m15i04ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AF6C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465599367.11488.10220995938926453775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bddac412c09eec45ca805b078373debd7114c361cce62dd52721d67b6c91b73
Date: Mon, 14 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744655993
