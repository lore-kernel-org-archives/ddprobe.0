Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18EA7EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78572C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672822887;
	bh=5mLhcqKbLeVa8Ccm1b7JOPDKAScpP0+GhOOxBF85zPI=;
	h=To:Subject:From:Date:From;
	b=G3eQzUuZsTK25lbzWDPdU8OXnLKufvM4H4LiUaUZV+LFZGAbnlFuXshh7INIhEqCH
	 9bW1mkQYw+BsBm2wmrPCF7nOlSTR+YoDTfrUbik/EBU/6pmAQudtxfMCs7B7i7aOrS
	 G0tDxMykyq9zbCpQgThZobHSbHW9DrR7z2eYujNrDNFbCS01SCYH8jgodT+znwbEem
	 aGTwLiWykDN5w0TLLv+dBBSipRUBWV7rn/LUDqHXJ+jJcUgEjoij0N8KP3qMKn3rfp
	 EqPOKEQjbkCNcKJCJYPBTlO2CnK7SzJZdgVRWtsj6hDXLpBeiScDNM4OgccYMtfNFt
	 ynvyW25Maf7nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F46AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282288738.19358.14354680988211546887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3792e30eb1005fdd44231099899f5c2dc091fe1016813b523a47ee3fcf3990ec
Date: Wed, 04 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672822887
