Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834622578D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763023794; cv=none; b=U6T5XF0Ebt+rNoQHhnfiqC/vPkLJrwjFY+e3Qn4OdpMRgoXdB5FbJdVM1Xyb8ycB7TNAywE6eMfBsO6W5wqAkSfNXkXc6iOFuItRmSqeDtv2dAKrmZo8vrdpT/wMG6Wps4Dj3VRQucsHlhEEV0mGiIXlaDXNwKk/cxVqMEyZttY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763023794; c=relaxed/simple;
	bh=Rk/8PMe21IWxaJHFgm04k3za0nGVudEaJVz+FDn6l7Q=;
	h=To:Subject:From:Message-Id:Date; b=WQ2VutmQxniID0d3DI9JmnP5uNa+87vou+yXlQwSbSM1p2f+XAI2gkF4dQU6RTd0Xhwp1WMC7LQlychRtpsPhS+Km7CGrAhyxzM/hRz2c7yio9zEt4B/ak5p7A7ozq7CtJ7PuptR7PhUD5/wFF0sGCVG0Ja/Hb/q6o5nVPgHRnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6tCYdi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6tCYdi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F27C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763023793;
	bh=Rk/8PMe21IWxaJHFgm04k3za0nGVudEaJVz+FDn6l7Q=;
	h=To:Subject:From:Date:From;
	b=e6tCYdi1PADwGHpTTcUihZ2LVlEQTC2ZvRM7lzvYhVnJAJ9pjfUXdt6XmTeOXMaE6
	 zXExdsTPXG6qPy2+mr35m+ugSeTIVej5HhOBUvKNmrmiGjzGqCzCyTUs2pyiUOAaW2
	 a7UFvrDmHNDxP3prf9V2H4O8sCMwq6xo/5hhYnIIck77H21CNaVeqk9snODb913RXg
	 F8BdgKtoeS4QpmEU29IH01rf3JWXt5kvzh1NMDobJcRJjhtV7FIfxRq3Q/DPGOmWYo
	 bkxfxdvvY+MB6i6S+7LoCpOD8MduII5yufAaPB4MIHRisF25lJIsVJkBEqYohamPUH
	 QlkLAiOqd6VTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BCACD4F5F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302379363.2682.12805539448162396515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e67daafd8b48af2842b79279263b50b64e8a79cc26059e434321f3fd282963c
Date: Thu, 13 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763023793
