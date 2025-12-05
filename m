Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F601F5820
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764894174; cv=none; b=tKr3RT95Sd4GAHLcEh/aDe8oq5F87vSMtQjl3gtL7yfMxxFhLRvXIiin3YA/QGRUCamrP+AQ7YAU2TrhWALVy7B3Y1IOu4aLXyFgCSNH080XeOeyfvP0HqX5m3RoVyD0GvUMQ7W48juAibSPXKJj7BjJQycVwe3ykxW0qBZ8kX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764894174; c=relaxed/simple;
	bh=/9d1zYW40RmY7q7Ja8s/LbKUQatgF+xPtjLnkVOVI6Y=;
	h=To:Subject:From:Message-Id:Date; b=t7wVMkaJnQ6vK1QEz8OBEm+b5z1VRjhc5nhwFrdfjc4podHtpsP1Bt/fjwmoEkfAF4lduVnbS+fFI1MoMJCcUmnXPqdwN8ps+kBKPlbVa7MuVVYPQZ3wRG0FZ0PxV4SmTITCVoPPekoC0sg37s2Fl27ZGkl1LcMCEwdBN0x/gFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcK0yohL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcK0yohL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63FAC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764894173;
	bh=/9d1zYW40RmY7q7Ja8s/LbKUQatgF+xPtjLnkVOVI6Y=;
	h=To:Subject:From:Date:From;
	b=IcK0yohLTlyitVD3uAZm96CusSf8lKHEJpqsD2MCNrGP796h0a9rIN93/vmjmpCro
	 iH1UWaMvfR4b1bFUor7W3m5/IIMtDmOhDMGsWTeoD6R4brIB9d3KzB0WF0geoDNbfy
	 DxM5awu/b21wd9WLSZNb2RsuT649aDbnSUqLH0nDhwM28TIfEzdpOfJ+pu3fBAzxHT
	 8a9aAhVa1MypkfVP1AH0qBT8xogxxlnfmNygbe68ixQnQvFA5h/IX1QSVRo0Bf8hGH
	 jpXw5Xj6wPUQm6jw6VY2mapCz0zFszhjIhz3GnknLCp8AXBVjX2PiLeLilKZ3lX6fM
	 i0jD0rM0qB0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740ED2CDE6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489417358.31130.1102750657481851801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54d035fadada442f238fbfa4735c92ef4682bc06e6282b9bbe23dbad647542b
Date: Fri, 05 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764894173
