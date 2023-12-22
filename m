Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D8F18624
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a60Or2lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B25C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703252896;
	bh=Q56BMVZMn9jOr7S2sYWOQwDUbHlvdp7h4kimFdD9eYw=;
	h=To:Subject:From:Date:From;
	b=a60Or2lpCDpsZIB6d0M89bxjLcfhJD+yZ6hBC8UJbWyyfXz00D2TlFS8HXqeAqCnw
	 Bt2XE8KRU4EHN9QwQvc2+0yOC+g+ZvYKmxHVeKdU4AgZpchXgrx4fVW6CsQcPBmR3r
	 HC2pYJFaConsmRFrQiY90olLRbkx0vDP8Sg8sEawenA6uwQO0BhNmBqhqPU3uK0uPW
	 r0ROMS47X1WGHAlTI8hXtX11ksnk7HBY64gozSYO0DQkv4Kd8MAsuAbrHI/K0uRQZk
	 TnVsb8Kya0lEXSzR0i8CqFuVD/2h4yuIwvdbTa7Rs2M0xwQ0k1XL8Y1ESznkWmicaZ
	 PaWFo4643OjJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D16FC41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170325289637.14665.12167549545231795534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdd182ce2cb8c4642eb8d9003e1f42c2f1e6d7136841f05c4cd7f5f7005b042
Date: Fri, 22 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703252896
