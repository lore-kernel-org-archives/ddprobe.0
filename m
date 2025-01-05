Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C677CA920
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736114753; cv=none; b=iHlbAPDRAQ7tinQBHbpsrZtkUfzRxDLmZfvv2tEGdLsDWIVpSdb2UBe26AsqSomuzQwZO42WWlgNwkpwtPNjG/Aizi46Jte6Le9fI57znwHWx9+TaiqJI6BwCSL5UdO9a6QaNC9XQ6+T0E0XSBQ4MUShj7UmCdfQYtzZQCW0WAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736114753; c=relaxed/simple;
	bh=Wnr7b4PeKmvz/k8pETAZqqIrNXG2zs2v8Euq8nTKz1o=;
	h=To:Subject:From:Message-Id:Date; b=a0JidlfX2G/Jmeh/p57xxYe1nxb1HGHz2AnI+k88bbbYkPuit3HsXGjOQrKem/leOX5c/PmmiFaQhkfo/b/5u+EiV0nmrSLPy6uY+lmjiG9Y9vx5Ep0zaRhyrR2y2GSX6aGp6D5QLynSmMktvhb/FHDZ+hBsoNyOTs9OIzzRhMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFXjTQp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFXjTQp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D90C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736114753;
	bh=Wnr7b4PeKmvz/k8pETAZqqIrNXG2zs2v8Euq8nTKz1o=;
	h=To:Subject:From:Date:From;
	b=IFXjTQp6r/tN6LBfZPrKwjWcYn//wm9b7myOhGBw9mEgvzNSRGQuItPtrOYue4wxA
	 s/WVnr71Unxo2r+mjoI5Lui2gTgOxEHsSwEBGYrM/HWI3uRVTP3Pb5BIei2TJF0wZD
	 P3EDF3NpZ2uC8ERi2eHIdDb+Xfjur1xTf/k1GVfFiKGaO0V34f3Xa3zi49NT2+T9tt
	 OX4+g5jGatDG5mzmo4Y1jt7XDBmI/xBkCDek3z1NJF9eidpkkOa1AiCGK7zLK/s8UR
	 SmKNS2oZ5o7RfmO+a3aw9Pky1p2W/6+JaB5kkOgqXFkeNNhhIoKSxVrg8aLz7muuQr
	 h/YVdWUB68/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B95E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611475358.4651.8248853058033389247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae53b46735bd02e5cc50348b0896a48bbbfa5ef8419fc2148b34fac725d59f24
Date: Sun, 05 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736114753
