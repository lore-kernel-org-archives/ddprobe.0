Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F380946A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CE7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676670305;
	bh=jeGStSr+kHEPWxg44Nod9FiiQexR6KArkLSsRI7jNuA=;
	h=To:Subject:From:Date:From;
	b=vCKIVFgG/W4Er0Oq6pe2QRnyvy0SqjuRYfY59MycBENRuny6mHZtjco6GQAYkIRpd
	 bA6dVYQSvfJ7Y5xCgo1d5OfE1gjDADMW09g5SR599cZw3HCmORXqBcINEHyEcxyXCL
	 1s/Jo5BQlNWN4NOPR6lPpxoCU6yPPOqN2kNw7IYEWJc67U2+h7tbpa2rKsSJ7bg+PE
	 1F1BQXeHaJJoz8rNKqsMU2tRXp7LsCgHXejZo5FtpD7oFh9LhOCfHevj7xA74vkV3i
	 2WcrUhOIAABAhf3Ha6t8AeHkvaJqhgZWkSliuq21GTgv31LyUud57itl67ShLEbAix
	 k8bBRpRGnynVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8359C636D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667030574.22974.13933291509512430603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21dce5f1c0a3bf2bbb20b37960f270877e5b04e5d8fc7d33d2274c0907f5d3d
Date: Fri, 17 Feb 2023 21:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676670305
