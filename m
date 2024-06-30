Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC0837169
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719759863; cv=none; b=AkrO8xLB4xfC6RwS+H6GLYnggWiDvBNYu6/RmmHRqe3Rk0smoHQsKQ9UT8gscCmULkutbmBwcXoiILNYQIbqxPbpVBsdwOdaGNuJKHDMiNWaDsfGaUPoaYZkWNr16u+bK1RM5L9vuxh7N3/WaLDvZAlWIF3LCCqNb8SoatyeXSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719759863; c=relaxed/simple;
	bh=jJSBUlRkxro/5665j2LJQjGx7Y16pa9ch8x6fcSLhQA=;
	h=To:Subject:From:Message-Id:Date; b=YNhSULwyWuGWa9iIbFUfmULQTLiIfbR6qI76PtIC2yPCrQKiiHyu1ujcDZwL1Twg3FofZeVbDZSVoZytwQPm/6fz8/Lgdd43hagSxTFN+FITOrJy/jt7WgY4o4pfJ+UeAl3XQId4J/nNyGnBqPZMmpj1wAqJBuAVOLe5xSTjmcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXdl+a2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXdl+a2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D744EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719759862;
	bh=jJSBUlRkxro/5665j2LJQjGx7Y16pa9ch8x6fcSLhQA=;
	h=To:Subject:From:Date:From;
	b=YXdl+a2tRIo5eLHh2YT/wN+slAhdMNb7lhVDShoox7Fuf9sYuh4qWqMtM8oWBJzlJ
	 E4tmfq2ArwWCOVd8G1VlMRPzRRpd8/zBc8CS9h38+invA5t3rLAlKGSxDlPrRrgovJ
	 iMSK5rnP+b39lUh8s2mOLNtHT2D3ariF6k9hE69kh2+VVr1g9DH7WiRDRrBs8y3hjT
	 hWcrmBBL1hj7WFkMqgtlCdwEQHENU3oQKGSASVh+dwOAztEGv35qIWRt+K04NoxkMj
	 gTChMSjigykEGGsaUk1y/PH2W9it0xfU8Nu7ocFTGpHaL5y+868eOSYWzBCrPzJxTG
	 x2TJqHyHhmM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6519C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975986277.2154.16245489724834415112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a2216d114f98c853edeff71e11d267b21f41e323d4929cd9407b01786c1807
Date: Sun, 30 Jun 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719759862
