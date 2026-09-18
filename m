Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AB63B3C06
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789696834; cv=none; b=aTpZy9INQ0L3QQfyl4FtZBMsn32mrNZQHrjcmcLEjgcP+RV3NrmUi6z/qwMDg75vEB3lQrVitdPiawcT5xhj1V5ctZ5MDzL3rWWb0QTC9TG3Bt9WelR96GB+AQnEr5JI/dldXJqSAGUlon2uexOZAAWH4oYhQdPnDmRcUosIIqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789696834; c=relaxed/simple;
	bh=PB1QJzD9TuqC3Ci18M8srD8OeqkH2PT+GlWVR3KKd/4=;
	h=To:Subject:From:Message-Id:Date; b=D3WYuOIaV2sBbbXWUmy0Ig4SlLHGlIxYraRSGXOh5SZ0V2EDbKl5Vuh6Tg1sfZpb0XTuMIbSPVKOWWENGDH8x665bpFzSIDFhfOt5xFPWt6lthf2noyBBJmMqwVgHiplCtkq27+yEIGAC1J2jU5bB2XUmi/wQc8JOrG916jRDmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWQYVuC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWQYVuC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D260DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789696833;
	bh=PB1QJzD9TuqC3Ci18M8srD8OeqkH2PT+GlWVR3KKd/4=;
	h=To:Subject:From:Date:From;
	b=iWQYVuC16y61xEskMaG865dTsJtdFMJxpXoSUyyUKE918rEyCImgqQGUU6z6kVZkv
	 Cvdr4Z/nLUK1Y5WMepNcPbiHBK4RMYqjifppqJfHgkEWZeeroPfvRhoLg6Jom142dk
	 7rFaGFe0RELr9DwCsETm+Dpsh4vd8LuUCD+Z9hn8y+ZI088PaqtsIKOuUHyFKbxyEw
	 g4MhobnXH8X3WGo6TDx3ODorWY4xVcuZI8FPODCeB2xwmGVoGBfR9sKoSh5E9lypMJ
	 ikgYmgUjcNrWpBGNSbUpvJ1Wp1l6v4gJeui48RSJF+2nV3+LrWzq1F7BjwkJPsZYnM
	 OdEGzxyaLvfRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF00CC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969683370.3654.1730482094407808334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c8665039b042e5efaed593dd9ce86a188b6c866327056c4445d2a98ad245ef
Date: Fri, 18 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789696833
