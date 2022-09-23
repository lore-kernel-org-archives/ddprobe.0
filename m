Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCF03C3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B8EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663972853;
	bh=2L0i5TcTenIt3W7aN1eGXKr0RUja00zKw6tT1VqvHP8=;
	h=To:Subject:From:Date:From;
	b=giNVANr9bL7MuNsXZKcxGNMdjIP5wnIZsLikPaTPwvn1F1/4xhDCSQSkJ2mZ2/X42
	 XYj/q3Ih7x4T6O8na9k8Qc1Q1FyqlYrCfHOtWekJeIQr0eGFbHsNHMLAujRneV6jVB
	 QrNTFsrhkg/dl0PVq3op45rrloLtXVIzIZqNtEvcB7CiBVS0XbgfQVAogRvjL1r5fj
	 WbcD4M9/DZKjFdCPoFsNCQ3sANTqZAdABkzIRgqmenJN+hJL6PQONh85glEiTSY5FN
	 JlaGP0alkLxRfH45Ivx+/Gkt8cTPNfFwcPkTlNjmv3dAt5ZcCvbwG9Cd+YR7fEadPC
	 CwaA1rQef4xIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA34C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397285331.19425.17616132283246734870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02948cdf7e62413d6dbdc8a273362663dd06189cb265fe0ab84f8a97a31662ba
Date: Fri, 23 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663972853
