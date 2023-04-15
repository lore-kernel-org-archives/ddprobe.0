Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BD21868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35CAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681588445;
	bh=2cmY6yD7GJJQrSw6tV9Zy9cBYh5814n1ObQ/7hFd4mI=;
	h=To:Subject:From:Date:From;
	b=SqPEoXJAIDRADh26fXh9lqv2m3FZLvoaikSNye67kgMr6fjWCYbfAeSIa/6YVId7Y
	 hXG8VsIJl8J4RSfKmSu9fwLJrWlBvsprLXmgQKEcZbbD9YRclEZMvp3DxQyMDV1Oaa
	 3NslK4kbBzH4T1T96v9HQkiPIOiNi0imHXyDvfWBWJDIWCLGcEI7s1kbjuoOD2TIJG
	 8VOexfcacMZ5EAFp9n7Fj2K15dV3CTuYorMUb++Y3relhrDg+oE2zfoo5b/YsN4Czu
	 60CVGbHp5i0TGmrRqioNp26H4CO0/pLHmDfqSFFrVlksPzQpywbB9D2YQ8ZI+CoEvs
	 3Ig6O6UgElgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE27EC77B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168158844574.4112.13499269781161095106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbf2964c42ac9469e9c4ce71ac5b28ae4bb759a67e7f322cf6746a0ac9f191a
Date: Sat, 15 Apr 2023 19:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681588445
