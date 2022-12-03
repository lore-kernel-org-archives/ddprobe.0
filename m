Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73801FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DBCC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670045454;
	bh=G2p+d20uRD1BMbv0iapVvCkA6NJAX0jhJ3znLUqJK+A=;
	h=To:Subject:From:Date:From;
	b=l3KYyApiwuvWoYlnvJidquQo6/aLj3ULc74y9x0y3JK04JFcM43hdDAZxYuDxWN6X
	 6IUZtmLn7W+Y5bJU39IYgJkNzuHDAxKJEkXCcraUclnasWkU6XFF1IMt6U60qeRgzJ
	 dll57jVAVM+WL21F5G58Lsg+3hSmg3eyjKZC0vikncMGDdl1YolJKlltaZvELg3XzJ
	 UUi00nVuYZdOq3RKdNHd2KgF3f8JdRQ7OTZCzNcABZ2UNPI/bVHJrI+jNbKSOvDI9E
	 YAdLTe9tka5/wzfP70r3F1MtEE2nwGvTbRcLNNBuqBReJcNX8mcL1EBwB+S3/GhutV
	 pV6pDjckK3/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B1AC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004545434.8753.8701499202396139698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c25e9f0909ea51ef77909bee2454f5bd26c5db691af2e6b06075ec5940b9d76
Date: Sat, 03 Dec 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670045454
