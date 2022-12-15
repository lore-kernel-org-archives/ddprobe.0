Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012FA3234
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F14DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671113487;
	bh=PyTceH88MJD67dNCdUT/WkAyOeOmIEtq0Hfl7APkOJw=;
	h=To:Subject:From:Date:From;
	b=S3n5UjmT6+M6UkI81rk1ymJd2h3zsa7CQQwYIvj4R1hdvISc8vSvdiKoSOFlHfVYb
	 17/7l5JR5m+GifwnspRrSDphDugs5itW1J6Lj/4uXH4tx0YoOluXY9jJjHEApBqTOz
	 ZaGuc5wMb2sS7uKZPi4jiCSZ3vu3EfJpcZjhpAWXWjUUSQzNkOV4c37bR5n/G1dwES
	 oBFZhimps0vJd8hXN3+Idd0l43nZAmxcmEDAH6vFPg8IBYypQDewMXhKBmisb1JyIC
	 4/sv1/K3DIqxJkYaZeil3IcHr47ReFKAym3TArnjY6Ovde2GDlVASQYCPEeT1VXDWQ
	 gGX0xjOFyaxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654C9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167111348740.4096.14881266926065790908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5260931898df47b976fa46aa52810c01d4223d58234eb2f8fa3c2c46b555a1
Date: Thu, 15 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671113487
