Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5B364A
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVIBx3vX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5127C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696732628;
	bh=G7vqcvusP9gGVqtDOVuyYYnDKhuONIKMmg8JsQYQw00=;
	h=To:Subject:From:Date:From;
	b=HVIBx3vXKuM28za0dnrBWE0q1TvvjUSMc5qrV8hhnY5O4shJ7lFmx63hZ3H/qv1Uy
	 AsoQZ0M9V46cdwnqiudg5aOg4n+oNi2GejYnY1uDlkDZZQ4iDUrW4aNRxiMcuw3bz7
	 R7eGQm/yAXKCfxHHEQXw6GGxpIguGqaiZ020viG3J4kQUuKz64ujp9E6059dKxi+UG
	 Iz2XR46ZY/51B5bQjqUAr71PAdc3IQV8PMxavAzPrR3VuRxqNFkPqrSEEi14zAaLgh
	 kNYWUdQT7sF8VmhOS4wJnNSczmXmD0qkQxXS6C9cudNAxQdX3wXX4z7tLduHRO9Sk+
	 TpHECzW0OgUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B53E95A86
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169673262869.24952.1757579037511608974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0769cc86d239645dd735ffcd717b2f2014ac7ace44413e916a8b1d06c14808
Date: Sun, 08 Oct 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696732628
