Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45A24C6C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1B9C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664551253;
	bh=SLOrPFPInXK4Ft3E7UyUeNU8a6i0WSpjjJLx4nDSylM=;
	h=To:Subject:From:Date:From;
	b=FaIQ8NByQAmKHzuQycFx/nEONrLvyDPHRc8VDEuDTE91Aog7cUf6uaY6dWv1ERl6o
	 KksExRmKsBQu0uwL0bl/G4nxIOIrdK0SnnWt/M6TUR1fBh7MzrFKAHaNFzL1/GR3iM
	 nY5vaYjU2pLjNr9CzLXvVb/s/Q94g1WphLAJB968aM5Hqb1pGz1k6hLAqpjtktODUi
	 +t5SIcHb1KyHaJb6R5rVY12xAJfhOU6G5aWF/+0Q4z0J3zPzWR75i72M9IQdeHds7O
	 lgeQ9MStDMZikpbVIa9mgqMn2iK386Gw3Q5MgAHxgOkk0TjQ0laGfDqT6WmDWNpJP0
	 lRwhToOmE99Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F83C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455125333.15532.759670357068292262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1594b7effcd3f2ffba007ab6407bba50c0dde1039ab362d886295bfce89dcd2
Date: Fri, 30 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664551253
