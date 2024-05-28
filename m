Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A44F15BB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716866663; cv=none; b=fUTJ42nEllO2XFdqz0o4KZQn/aCb6eWQCo+dZ1E9+aFeIojjHqEPaXjNgzAU69wLlsyLmPY+D6w4fJQqg077vJeDoHPNzNBBB2OtL7tSAVHQ6OZmaLXNwmwErfflSe5/3p8hc6FkQeufYD+86qev9zQGjkyQ7sxTK0bo0ZuddfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716866663; c=relaxed/simple;
	bh=/P95khGyxBQgL45lHw7BhNSWPVlo4mouf4ZjARRV9go=;
	h=To:Subject:From:Message-Id:Date; b=bi1W3DJuncnwqU+VtUcs+x/LpeaM2YCPaBJ+xFt3ofz1Lj4hEgK1YLdIn+mkAblvqdM8e7xPrkzFeiXVfnxvcJDvno1kuOV2raTEEmCUecMxe+zYLALuQvn43ckhDB6deeauLwhlb1klGH5z/CrvECacwjGDGVe10o2WP5d5HDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUGlRiMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUGlRiMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A3CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716866662;
	bh=/P95khGyxBQgL45lHw7BhNSWPVlo4mouf4ZjARRV9go=;
	h=To:Subject:From:Date:From;
	b=qUGlRiMphTDJuIUrJjKpE1yNqWHp7huOkcu4p2Uy67OIIbYgzyFrnDI7gkqO/IEwt
	 4Rv16OgFFqiz5z83G/Fn8VA+gGgmocJTpiEvf+V5MTaYtpYyCB2vBTosxz9k6NL9BN
	 aPONxbpaPEfvCoMWuWqddz4BfWl7vnYzXqf2R/hpwbJdpqSkgAT5scSGn6niTFfmem
	 Pqn7TkQCaRgB8CLphMpLvAvEcIz6Qyf/1IoDcOctq1zWnnIgPUKnYldgQcBYrLz1Rm
	 /lQUAF7I1N81evBvryDphM/vIvc6SeGGsRrYJfob1W9IZi76wgIM7cDlVGf4zN4iNc
	 Met1SUlXalWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B6EC25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686666284.19177.15021383890477299201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63ee735c0b89932dc5a2f88c91da588ce9f767b9f82a722c3c1184e1f7a2219
Date: Tue, 28 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716866662
