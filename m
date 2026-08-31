Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624A23B42C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788180034; cv=none; b=eRzA7mar0W4cwN6II9Yf6Hg9lwQwDUlbA7kffwpJPRDRXwtcG9T/CxEok+keoMyjK15EzMjWDMWJztuO0ZUYVhR/7Boloxz9oob/JJ1k8m8J04aKFkM1Mhm9yRfznVQMze42desNsawz/Pi9KdWCtovNa6AUR6n09ENRezxAgEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788180034; c=relaxed/simple;
	bh=OU0zAZ0wIFFSTHSodfJLFPtD8Jp5YhHGaFSY+YTRZ44=;
	h=To:Subject:From:Message-Id:Date; b=fGIRwmp4MgsZeYUGG7JXfCYTxxXjqc2Ac569Mj6J9cE4YjnqemHYx8TaWn8JKUXF0frvz0GiyP4lQKN4jZ0jchh11JpvDTsia6qor7G4qmDiagdOiRHxlc4wF3VYF+aVHwWD/yk9XUKeWhlTmXgvbQn7O9Dli/OuaU+gt/IgOCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFOnJ6dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFOnJ6dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30E3C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788180033;
	bh=OU0zAZ0wIFFSTHSodfJLFPtD8Jp5YhHGaFSY+YTRZ44=;
	h=To:Subject:From:Date:From;
	b=XFOnJ6dGDokfkY2vGmZsMZmekvh/PGucc4oatV/HUtkTSikVE2E80GHRieJAOy5xp
	 4NyK0jPJ2JC2eVtIvexAtObSa4+LL/f74ktzO2SuKmG46I2OHnPFnr1qnFL+BGT44m
	 SzBWSJZD+lCYAD082uxfe7F2DcODh5rp3GGTp1MAW/TgF+QqShzJqZVR9+5xIR+axR
	 l5KxihX4pBH2wiGMh5bJfFwh3B4cg4OICKY1UYyxg6ym432oibw2SIiDK9u6CDj9ir
	 m4Bk8XijEqzSamPnlBLIEEs7GY7L7bXDGO5W8oz3MOJvxCTSuZ52NAt7RbOJb7Uqpr
	 F2m/Otn2y5n6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF229C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818003370.28017.17350873449645633829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f808bdfcb5ed06455132bf6f31def45e43d4423f9296dc947184400835838b
Date: Mon, 31 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788180033
