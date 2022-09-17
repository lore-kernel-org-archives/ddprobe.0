Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72E02119
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E375C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663420853;
	bh=VmAtO+iAWY8RBwh/obiUtZ40pbwV6arFCR3eouZLZD8=;
	h=To:Subject:From:Date:From;
	b=gs22HvM5+/P5Nr8kS8GzrKlxE4ISGlG7rO3BRvCE2Wox2uDAi9yBap43OlzGODJ2L
	 LQpNpVQEAnKiBz+gi0r9j+zVrcjQRU/oUfDA/xVa70hL0eMjbv5eMpKx53Sn8GVtYA
	 jCfjP3WZJVdrDqkt28/482l9XNBD1AgZxhxdLs5ciHxzHi0GmJyj/51ocbCVy/fV3d
	 wT1Kbacje39lxcEKqenLkf5yCJR88UjC1PK8EgwJsE0291Zuq75nEJIfIirXKv0eEV
	 KN8JB9JcqPPjDLDvIGiE7RHI04HVmNX8NHDi5eXWfZimUaz0BU6zv/kJ+gN4H7KFhx
	 px8OqVa5cYvqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53460ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342085333.28384.11805801887445727397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3d721152516013a1fd2cf594e8b83b6bf722991921c56b3bf27220373d0903
Date: Sat, 17 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663420853
