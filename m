Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E33533E6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DF7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679055665;
	bh=RnjSWWaZdEU+9TN7BdyFz4QSoSbYeqQehN4delwWsec=;
	h=To:Subject:From:Date:From;
	b=UFWfHt7KraC6uwaTRiqAhzo8jdk2ehHbaaVagw7WjN6bpQoqhBM7BGKm1obAXVe36
	 5zUNfQURyi7MdTYfu0jEpdVkmo7Wzhsr5dRIYlSo1+osWZUJh8RaVxJALdMQdQ1/WN
	 n7kuzlifSZJ4iX1LDh9iSHa9QkLSj1/uq5AsL+WalmY+aZ8hZmpKiPErD54joufx7B
	 ta0Mj1UXxjaSXMJktaX+C1lwhvCxKwX2APdo+4g+O5D2Nuelkbz3aCWrAJYmbaZeFa
	 1eR6C3ofAXzfQ+eetkkzH0CC40iawQCbsSmbSq/xLRZxMJtD3CbFqFcmD6nORuAKg7
	 TdjRdd3g8iq3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C6BC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167905566572.25316.11610961929864047276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b78626d09f84083d6db4269f1a7efb6d01dc745c44eab32b8653a38eff2c6a3
Date: Fri, 17 Mar 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679055665
