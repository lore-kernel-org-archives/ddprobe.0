Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BDF4207F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754018393; cv=none; b=avzKCbuXftH/ZiKkpU01PB5naTIwxRETFF2+0sqVQ+BKuwZ+w4nYDUjNr5k18MguiuU63D2jaKmbLNjlks0xS6j1k3jxf4OmaWZH5Wb/Cv2pZbgh2kFIWjFRr5scwmeMFASjQ8nx7wXte+kjrgdP1qsEKeFdbu5mz6W2KvDs3qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754018393; c=relaxed/simple;
	bh=TXFY6/TfU5ZzKYg9PGlNF79qoVqpm2YZbtr//bsp+fU=;
	h=To:Subject:From:Message-Id:Date; b=l0Cn/qOMJQoEB92wJJ+EeW8mBHWRpHUCvIJq/6FqIKhuYYlmWM9LQwYElPMmpCp/WkXuBR/tn6Z0FmHAvD/f2Tnj0/SZDsXZYnvauLIXalKFXuXyGt9ABKl/rLCsNr101Wis9C8z1oPI4HUuICUCjoZpLXNd+lRoUWEOVqNAxOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usUE1PW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usUE1PW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C30C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754018393;
	bh=TXFY6/TfU5ZzKYg9PGlNF79qoVqpm2YZbtr//bsp+fU=;
	h=To:Subject:From:Date:From;
	b=usUE1PW2vKng7abZRsQtJhHWT1hGk0Gz6hCEMyxQ7n9leoP0m2p/bKPzlgLZq54re
	 w+tmv/KvI0quIp8w0IIgKBFdsgI89Q1FAFRIr5Nb3a1Abg+azqoW2Ve5yyEJG7YR9V
	 6HSjsTbeEZaL1F1Vh/VnFRi0i9NhumNdaXlWaoQI/FJO4B4+Xs/vamhYCDSFvvnb7a
	 vvmOtk3Rm0Y4ycETB/Tb0kZah8TWA6T/4BfU2ggV1Lsb/Kg2NqW0XrxvSClkJUCyFi
	 Vp9MHoQP8k/nHbWw/EDXz1CyE0nQGOV8N2ZMDA2gP+NpdYir3mjG0oqda/DyQuCfle
	 CGBXIgWrcb/uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94833C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401839357.24341.734878095538328172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b4141efb729b22f93cbcd80209b366e96878ff1ae03d0a581c1500e35df474
Date: Fri, 01 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754018393
