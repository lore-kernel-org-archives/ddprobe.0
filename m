Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162EC2DEA68
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754904594; cv=none; b=f09OcwTvb/naKsvYrE52v+OHFj8fo7SMQoDfYJyLxzhgfV5IQnKN9Kp/dTQdpp09vh+R7qSfaY2iYFPUf3g99bFepRyPdrGiYpidK4mw3krKlze0+LCPBbv9podWAODr2gmnNb1P368ehzZqmy4Symp3Hzsn6IHndqjCgKEzZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754904594; c=relaxed/simple;
	bh=K08UjOAKOk8PnaqWNezRHnpM15SQXF7ikpC5AuOpRC0=;
	h=To:Subject:From:Message-Id:Date; b=F41NrLt7Iw4kyl3mA9TCVG+cnYap1nBU+Odf5kHDM6QJiNNamnXP9KK5Sm/bh+/C28PP9NVWYW16TzrAob2A5p58cMIJ1w+7ewUaYbVHAHZnxU+MB8h1Xh9KSeMVrpgRQ5mXljYePe8EnV/MZ1WKtSXWPUJXCraanLOvcLS/XY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG/HxqTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG/HxqTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F214C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754904593;
	bh=K08UjOAKOk8PnaqWNezRHnpM15SQXF7ikpC5AuOpRC0=;
	h=To:Subject:From:Date:From;
	b=sG/HxqTqRyJvfYAeAXtJyfviZwyVGrrbA6BqnSBPsR/lCqdFffjjrzPLq3UsXjYzS
	 Jrm1X5rHyoJqAODy2taoYJP9PEjBOwgcK5QHL6o/QhAbHE3EzCjvPssOg8Tw5vjaTE
	 xudBX3H/736Aw02Eiht5cpm5d7YLSALzBX9/xseJx+tZ0WHh9IttZw1upgWvHwS6hE
	 cTb+ViEZ8iPO6Ihggu7saA0AXAgrTmJfs2/UcY/2HRplXar9Tzrj5aDcguJ1y2E8jD
	 5/GMu65maQCK7lw0jU39zpCBXsS2mBCSI5rWPYjdpi8SNJMKwXivIy/tJjcRaPNDAx
	 QO3gDw7M3iC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7BC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490459358.29116.6537538348734849962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275879e1468d4df7e053ab8d402c112ac4825e15b870520f1cb9b4066ee99707
Date: Mon, 11 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754904593
