Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB807E792
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759796394; cv=none; b=euU0xJv7Y1Joc2IWsVG/qxkwxRoJfWTG3Sv//wtLBFBuziJNzCIRmYmzW0U3BSQSUMq1FWjgNyD0zBOhendZiHWIZfsk+UinA+h3Ulo6j8r6FFu+7xMweY42dpQ52nI7q0Gt/J+jB0G/hOtmx0CFBNY2Z5TFB3NOP5LS6h6kRgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759796394; c=relaxed/simple;
	bh=UVTKkaNEAjdOyO4GizLY8T9E4lSDsDmHe9NUlBNFNiw=;
	h=To:Subject:From:Message-Id:Date; b=L9wFRaedxczZA6qADj5Xin7qVH+qOChZFvThxxq2o9dqo56+jy5Ml5kpQSWgu8/Wgjn8Rwvu/QSO/6cxEO8TCI1jMViffe4R+HIqZVRcwfs318SHAI2XAsnKQUAT/Zi60OCH1bSvmIVJFh1Vh46VG+BiX4FGHYMNhqwnBrDPKMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixryIWRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixryIWRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759796393;
	bh=UVTKkaNEAjdOyO4GizLY8T9E4lSDsDmHe9NUlBNFNiw=;
	h=To:Subject:From:Date:From;
	b=ixryIWRp2Af9m0u+85VDp4hUPqECj0T2Sp8yIy7klo/m4bukdOcWrcaMdmbJKpwM0
	 Nlt8/LIpRBfZQgeXilh+lt/S4gsD2QjCCMIlimOmw9NC8p2BTbIGvJRgtuAt80h/Yv
	 ukRFq+dZmZJarh0k+Hs5roiJ8DMnx+acCxSZ79JLm6NRmAe9s+5+CHXl0T/yCOpmU5
	 WDHmvlmrm1br/phNaSSsEnzAQwkqovD6ZQsJyjs4ze+0/4ABS6cHMAi/MCK3KRh+Fs
	 KIfMKNFYrXJDxcO6Z4qVrHUXCsguBvOrXjwqrnbfrAQDR2yWA6Zsjs0W+4vfZkcebq
	 Xy0rxxdnCXFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92077CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979639357.16180.12729410496705187050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d01ee2ac594d94e0fa469d5e563f1503bcad3d9e8ef21e6f993fd774baef52
Date: Tue, 07 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759796393
