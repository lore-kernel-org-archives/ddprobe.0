Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6E1AAA2C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738916754; cv=none; b=t2Z/sAOCETnoCPNEGrEMT1NnPbZzyQADoIjOqE4ae3xEnBsuPQFHwp0K82XIsAbu1tV1LwFtvL5glr71p4EhphMj8x7nqk3EeAS2Pl3hy0K0tISJ+nzgEmfnM80Jm+voVIMEwlfGu3e0fsIotCAMNPWk5NF7p2ARe4yBzFAUL5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738916754; c=relaxed/simple;
	bh=VmB5oQsvWEMdnbTNIfl1tzjTHmY760r3Yf/fgBW+Wvo=;
	h=To:Subject:From:Message-Id:Date; b=CxvUSLdq98QgAI08B+JPKgNwl1M9c/oGsw1WgyRs9UjwYAX1kvzksYWMOaMlgPnB+mE7mifG2VtW3mE1B8OVXFvGp1oUqeuKufpc22CeBA2BRjgiTyIVP01RjmZDhgFX/1QK8XqkEAFPASmJHAMIFoLIIbQT5RK/52DkZYcSfcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJUA11uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJUA11uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DE8C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738916753;
	bh=VmB5oQsvWEMdnbTNIfl1tzjTHmY760r3Yf/fgBW+Wvo=;
	h=To:Subject:From:Date:From;
	b=NJUA11uKadesp1Jzj8QUyLQxAT9Oylkc+xmXehpxMdPFwdshxMxamNd7BE8KnGo2d
	 94DUPJf7D8UKJ864x3kXLl0vU4X5e7Irw4V5Di/V7IcPR2Sd4eAGByCEizNR66GMLn
	 Np6QKhZHYZTECI0dbZr0QxNI1B3lcXy6J07GcNE71VyLtSFcI8nKxbK8+gJeMBBUt4
	 rwV01ofcL48t4Tr8nn0i7ox7zLXTY2cI+Izs00OQfhSnXlLs4bgJcca0uEc3aMNKjZ
	 7G+vNIgIni3ejCsTCWG3LDVT16efGA7ZWPMdnQ3ur1QNOEYFoKU77YE2J8hK6nG1FM
	 wH/TSoEGqUHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3900C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891675365.3401.1859898227246926569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad51606aff6a5ade5edb670ff47294a01766cb8352ef48b635a6e83780c7fbce
Date: Fri, 07 Feb 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738916753
