Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0C03B18A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776598054; cv=none; b=Q2rzGzp5nGcGIuC33wcutsEvnBXPl3/g880pMopHH5/BRfXqgpoy+Z4vPlP/3HZ791N+KYRutyeGGCRAuXEBGhoPdhq2sNeDiAPB6PABPxivU0pMNY/hG+hlKdGvqDuQ4lUBOvsXZLvHi0ca2rzR/aQ766cT+Lv7SsDi361w+OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776598054; c=relaxed/simple;
	bh=wnPuFkfShcpu61d0nwehpHx25gEBlrLjhF01TD3BEvc=;
	h=To:Subject:From:Message-Id:Date; b=b6SdaG3ueJZYN/f/c1Sfr48fJ1yEYNlEb2mu+vIP6o1XvNbF+orfQpzUqSxSVkbO3W0nVXyvscm7E/3rIz/e1wZFa2eI4Wtyg/im2C34bxZ3EiWw8+xacOkiXx/mif8SDnuSY+m3WHSyBJ6kSpTzFA3fyY538R8ZaoVteAfTG5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo4Vn+dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo4Vn+dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CEDC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776598053;
	bh=wnPuFkfShcpu61d0nwehpHx25gEBlrLjhF01TD3BEvc=;
	h=To:Subject:From:Date:From;
	b=Zo4Vn+dM7Pp1SaLXFCZlUZNngfKMnxq/6yMmnNY9TnVNOCvxcGJxmLpKhqdoCWLbo
	 /QIWkRT0s8KpGzHoHxdkO0D/v4JhbLSav0tSZj0K472rrPyOguIVLweldsKn6K4BIE
	 0Ia+ux3osysK8/OgZY4ACdS8wVKaWMADTRCxgrAUJt6IXfV1nCAAunurI3BbfkPdfK
	 c3HOmOHoMSZixurhBLDMuf+oEzODYOTLOofQMNHSF6LT5ExBaiGLnNK/uCDXR7nqsU
	 1w0/XMsUoL6L1cSJcxjLjScFzjUPuIPEgoZSG4tRqGaCVyaTrgitSwAbhsTLzWkXq0
	 Gqpnfc/eJ3tBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD8DEA7196
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659805368.4108.14369680017162118067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4265bdc0d661dffa5cb50078e8e900ce0e6dc42a1bd918177c4732c8ba29469f
Date: Sun, 19 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776598053
