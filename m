Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C9C179B6
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00957C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695367509;
	bh=vjzKEkckzNHMV2qlfgUetMpKsQ4n24ucPB14RiY//eg=;
	h=To:Subject:From:Date:From;
	b=ngiWNxt96Lyq04DV5M6pdXcrm4xaP0Rl9W+idD2ej3v/WjQ3rpK0VoVfWdP2+93Tg
	 iOoaRS8rAYrV7kTkiKOg9EdO8g2XTkTMdsW6fOFU93huZDm57M518bD9VKv0OV7K6X
	 1nvUJjAe49utrBeH2xD0l/LDqDQIwApzSwV6gEjD/lZWZ4sxRwTo9n4ySWqpokaOaa
	 khup0CeJHX91M2FPxNK6QQUQ7ZuJNgCZ7SqFrWR+Op4DIM6a64t5uISmSK9x/QoZ+d
	 z3kWQUPcXfFpkJ+/5AQS8BD7yd6lZqBz0ZLXQfTIsWWVDO9vqKtd5dKHWbSh2S051P
	 X3O1/UB9DClCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DC7CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169536750885.28916.7803515954348890132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ab8a68288a3df391e9f82417365d4c36451f4a5a1c3b5db240dc052a7c3d06
Date: Fri, 22 Sep 2023 07:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695367508
