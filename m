Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215A6171C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754465394; cv=none; b=WN7vp9nYhTpNarpqsyfBfrfVUrROoYvMifJKLpIKuYHlHIHxPe4p5TtUXuDkTJPKGZ/o5aK0GLzgj6c7cdWO0ieH/FW0PsBqofogk754s8llOh3KmVxUFJs29Zchj18HlzWv6Vz3t5JJ23Qs0Gt2ZTw/HOd0KuIRpvhWD5Zx69E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754465394; c=relaxed/simple;
	bh=6h/m9TOhwMCfYfVU5l7Pov1KOfx9Hc2r/9xd+6ZGlhY=;
	h=To:Subject:From:Message-Id:Date; b=fD4MR6d5AgA7tbh/amHNN02EcF88xwKvs8brC5MxXsRdcsmyTAh3kEWes0iTKu9Qr0IE6ASllQC5CFONsoFZGxi7JSlBQ8Yj3reZw6FiJh0VvKbin3DeI3QiI7cc8wtTw3eaCuU91rFrZ7TxlfBxty5AgMH9sQmmHGaR1VJ6ltA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6F18Fsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6F18Fsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DFEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754465393;
	bh=6h/m9TOhwMCfYfVU5l7Pov1KOfx9Hc2r/9xd+6ZGlhY=;
	h=To:Subject:From:Date:From;
	b=e6F18FshPzr98Dw6Tj0zYp76mQO9PSCvlskJ2LA5SykBJ7VkqBVDq6jTtzBfspXlx
	 IGrFnXPsje6inbi2mf+aXl/txrF0+JdyO96z+M9/o5LUsgIeGj37PYV3aR/kBhd8MH
	 9ljqcMMDsi70B2pbLbUlu8zq1cQj9elSJJgXe4g5T643BXMGPIVtUxxhf1nMuO1Toc
	 CGF6OpcYw/uelPyqqx2Nl7cTpIpqojOj7W/Qcxuyn5UfU7wtlEYuzHmMGAGEO8qUMG
	 mGptUWRsI4yd6tLTK6rzsppgx7Dp0ZSSZqDum/PN62/PjxbLxE3zpt6ZlXs/n6C6Cf
	 zT27f8wyl/Fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F989C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446539357.9546.1063677972447219621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71912dcbc1e8631ab9356bd4ee65c891bafec3e823af93d5f974435718c5324f
Date: Wed, 06 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754465393
