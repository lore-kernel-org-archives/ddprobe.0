Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A37AF9C0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770927894; cv=none; b=RQ+4jtZ7p6AdIDoXTS4F8x51rSioHAbPAxITF4h1TixePMEaOr4d6Z7IindnRr8aaTOeEC3JnW/LQ6vvzohpq3ohSk90+fwgOYpheTs17MJTW1p2avHU+jYM/PJ3PsDey6cMjOHNGjgxZ8ZL/x1BOADeTT+6j2pJ7brXvhONXd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770927894; c=relaxed/simple;
	bh=BWvgcJFXgS/yNJ44H3v0iFLW6fHC7/oZmh83sfnjAEg=;
	h=To:Subject:From:Message-Id:Date; b=mfV4p65X9viJeTmcvmwl3f2UtutV7BqQQItglSzPGLbAoE3dEt6ptgKWCJn4okW08vwmZK6PK9DGQ0at+P1svAOhoVFuLTt2jMaKoMaMgqVuoOzHSFmxz4GV7qda0P9IrKEWSSnJ5En8nJcoIcLvexoUj2jFkK81X6z1qcvpjh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sojfJCX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sojfJCX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48E7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770927893;
	bh=BWvgcJFXgS/yNJ44H3v0iFLW6fHC7/oZmh83sfnjAEg=;
	h=To:Subject:From:Date:From;
	b=sojfJCX4XUDSri/uYZ14MuzKOOJ0fgHPKC3Rx3KdvVG/LnkWGsmDEmUIJ51OgRLUB
	 pVfnxsVWyDEnuq786Vq3KO61SroB/7PixLrszpUmsdTm6aLm6EC7LS5W+DBu4bDYxc
	 wBQ7uei9K+itn8PovgXGEztgDy7Lo0bxeR2G94EkqyM0AaWg++vTMHJTAzrVB5qP7g
	 azEOYQQk4+Egc+W9/0swOlnAlz2iHvaSYlINrnmVY7KRJCtMvvE/x5IRle7j6C8ghJ
	 JCk3x+v/0VtDMsbdIm2F+JxOuIYyMCKdQ1B1iMqaSlfVnYTW6Lrjy4m597d6Hlt7p3
	 uJsSINAoRtINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9969EEA84B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092789372.25005.12315433889068197396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed06da55ea6b7176640e0273166369b5144220f595fd5218e9569bd8184914ec
Date: Thu, 12 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770927893
