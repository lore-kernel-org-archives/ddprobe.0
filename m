Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313AD18453E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734468354; cv=none; b=idXq5UZKR9vIwLc1ATOniWjKquoGf3MY5QerrTvX+dof+jafBY0j3qlMXv4w1emgOr/+kg2dwbyL6ctZFTyQi7SEcO0vbRvxHVaDy0Sc4rlYpkPfqA3cHo2UyPqR3n24ztCsN1hjKsecGSJ9okAcbs71d7t7joXvH/y2tplBLh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734468354; c=relaxed/simple;
	bh=nuheT5PRCIhZX1qFxXuAFpEYFDZnpY+YEbZMJa8oAzs=;
	h=To:Subject:From:Message-Id:Date; b=JxhzKqeuXO/BEAhY/nmt75Bfq1z1fcOPlM2jDK/1PiTPpWIxEKRfYBlRQr4yviREpj3cu99p8oDCReWn7Z7ehZa9+dPl5t7qxF2XGuq3E3GWIMX0SaYEWuQQD53fOGDs6VPzjlVm1XdDbShdfDoprqnxPMqfhWyA/tRln6Wk1rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2cY3eEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2cY3eEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF91CC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734468353;
	bh=nuheT5PRCIhZX1qFxXuAFpEYFDZnpY+YEbZMJa8oAzs=;
	h=To:Subject:From:Date:From;
	b=A2cY3eEwXvUpeiZRB1mPHb3GwSBOqSilsjMIb7Kmj2fu3aqCQbGkNWENuteQuwd58
	 FawYDa/Z/kc3NQWRKypKkxy+5dogn7yOn/xnZmTEdvBKiLIqerS1azQ1EaUAUPuwhs
	 SyUaghBPXurjaC9scs97RFlCOlKujNynbs5smK3l3HzMwOYdYsrPfZo5HwaHPx2rnr
	 W0eGZmKAD3OriW3kpgzdLRlHq+/DyERvMML2wC2KGOh2Hua2w7JdDQmeJUjoEPlxxF
	 0Hw9ts14EdDo1qFKyZJ5q0dtpvEiDWwUYDQMUS+TZDbzfx4lAjHWD29osvgYBcRGLG
	 2+JgY+YyLAx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DCE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446835362.17584.1023111921423675068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d264afc818e60ca430ffba521cada7701824d2fb9cb6652894585afd3d1ceaf
Date: Tue, 17 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734468353
