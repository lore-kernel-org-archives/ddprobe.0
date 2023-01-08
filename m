Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028441112
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A29CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673145687;
	bh=wstZmH2Gshn2G/1lcLuRVueMS00R3qbOLpKoyLOpkTo=;
	h=To:Subject:From:Date:From;
	b=moYf5gNDCOvoO+queIiiKCaUFSUYeeP3O0PN+IQFbYdn5cEziaM+meNvkpKACmxZ3
	 BsWu/VayD/ktDshwOborLjxZs3Ztm7lZwofah/jFfCAC7kfYIJkwBYL+aKNzIivkxH
	 SdN2MhKUMAYcdnzsCfKw00oLdQNDeBs3pQqmYV0W3LX2V2qTAaUeD+eqRgdaR3EK3o
	 GtSErz7gfPohU7X5GRTgIUDBG/PXstxJZTu1zigDta0GOo6kwVaSm4Exi+Cct6xMd2
	 KXGK0b3PwMWT+J4R/NVK88p/0eMyVa3qWrG9AwyEiHZeKy04yylR4csCUuxkkNhbbS
	 jgJSeeh/lPHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BCBAC46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314568749.7919.14464776965255186178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaaca604336c9f6f3b09efb0d80cbd4d9467c1005a2cef3b332d53ff9003c13
Date: Sun, 08 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673145687
