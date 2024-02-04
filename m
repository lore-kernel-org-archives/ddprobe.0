Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069A6FBD
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707014297; cv=none; b=HiXrCiVCd/ayRJ8Wx5IHkLPGch/DpeQpdMSTHufUQ/Wm4BbQkRV09gCeL3V7S6Xgbt1ebfufYq7pdxkK4N8zPb48AeKNwDm9ov3fDaUR4ArAZneK8Th1cijEVn47Rl0JZ9yyi5vPJafF2nBD72BsTqFv2DpSIuyoRxDQR3KnW+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707014297; c=relaxed/simple;
	bh=Q8omqcsGHDFjvMsjT5JHW8gsj4lHFwbF7LXn2dqtG+A=;
	h=To:Subject:From:Message-Id:Date; b=T3xyNcrLbQivNhcj9D7nP+61ciD6+BJ/1JZ6BOUrjeIf2wAEntVvpLh3amc/qbCIhOBB5JU7UCQH/23Gk00JzfPJ23kaVHyuR0zkAi443MPTURlq3yp2PaEUfutI6jtVaYDm1gnsrarHK6rWCYYfG7NWiUkm/EubpfP8ziKu2NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXUz/2l5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXUz/2l5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95439C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707014296;
	bh=Q8omqcsGHDFjvMsjT5JHW8gsj4lHFwbF7LXn2dqtG+A=;
	h=To:Subject:From:Date:From;
	b=hXUz/2l5mQvVBsHF00bH3HuGTtSyIdOcXZJIrLSHhGFJlJd0N17ndKz3CTgMl3i67
	 1DER6q0RJD4L0MCrgJNMMCNC0/Vh7QIXaI3ECEWgpB2Z0btErWpZZePFyP1pzS95pz
	 Cb13V9SCDSmW7vRe5k31VPUx3O0HO4CKDMV6pAo+YdBRulDeWFGI24m5+cpXYXQyYo
	 WebO6cTqHKZGEt1zwZaIDbln/DVLklkuKGBwIwNqU+cMtoJ1DyaI0vTo3lHfi5Vga4
	 XC8KP8LIgTncIEftAVTWc7PPR4xdcOBJlWzo/Vq5Cs1YVILfiE7U9jAYcM1qUqtDFa
	 tCkmMXKSbjXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C8BC4828D
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701429647.18141.8600924417517914045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceafe3e1d42fcd9feb4d733b1e4e71641837e943fd6dd12adeaf94e8750b81b9
Date: Sun, 04 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707014296
