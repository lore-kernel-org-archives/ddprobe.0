Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A9C1F09AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759492794; cv=none; b=NlklCT5W8/yo9rFzLnj3xU4Xi2MCwEKBe3HIHzWsYgbXe4MZ3tfT7zua0Mpi9kAgQLdiRgUMK578a4VIDYwWrBm5cJN0Ffoy3HIfHPEzU9isVkUU6HezGvFEP28qpWN/Jjj/xcR4M/O+eym4YlkjXmBxxgIco+N9e5fYJ+GqoHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759492794; c=relaxed/simple;
	bh=z2gdjJ9DOOkenBbAGQKCkUTk3MhYBfAnZDvccwmVieI=;
	h=To:Subject:From:Message-Id:Date; b=Wm6RDfHlPjED1+OTczpxdqpJ5fqGEdEJqhtw3cXHBTuPhdIqy/nnBy+hd+KwtBFv+cK9a34wjWS/KCVu6ChmgNzn+FJln4kqtZhJRYHMYKibpMoQsVqRe/VTlCkZbSxPGFcTPDP2PTYTP0Gh52s9YK4vX5nR9VG+L91NDb+CWQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKpu/Dt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKpu/Dt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759492793;
	bh=z2gdjJ9DOOkenBbAGQKCkUTk3MhYBfAnZDvccwmVieI=;
	h=To:Subject:From:Date:From;
	b=DKpu/Dt+LJqxS7cptdpCaBeym7WaSG58xALgJvW178w5B6cxhE3vxZATuSYbV7heZ
	 29+4b3A/6j90aQ65I7xjUMtfjIWfPkKNFmdlO3+OFwBXZ+X9/u3Ex99jqyD/B1hFIc
	 XMQejpQmYLvAz+ww+S0k1H0PSmrVykIV7N7QpAhAlYLT1PZkE+bVQYGIhPuM/JcHOf
	 A9pX37rm+wZiBq+6R9ps0HXaPqD/+2Mf0aetfNV6EFhD+oaenDFhzxI0qM1A7QI9uC
	 Hlvli5XcsMCsBTcUEOjKX2E8aiyWwFG0EmV7h9endWDdORQtNZOJ7N2fXfLNlmdKsP
	 HeW0V9/qrN1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FECAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949279357.17485.15265832264493038127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe76871a971726463dd76d73b17d23923036ec57958319e453f379cbf6e8f050
Date: Fri, 03 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759492793
