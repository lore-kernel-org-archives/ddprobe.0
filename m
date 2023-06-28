Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526C57E1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687919588;
	bh=SQZIdv40Nqffw6qpKqdIKBxVQCzyGt7fIUMgnyqzG2c=;
	h=To:Subject:From:Date:From;
	b=TyvjTrRZkf3zhYOAOLqyaP4r56MhMu9P7S6TTjnPlpSZkf5eADuXuaCKFt7skrc5n
	 niQJwf4FkYW5TW0offzyXlYjfZio8/EgWZA4aYqyLQjCBj0f1L5VvBvekKJRiQNP4s
	 9UH6OhsQdG2RWbUChguQCeeyTWgPpKN3h2IBWI5PzU4/FLyzCrpkqg0VzKPhr7zmjt
	 +J5jcBJnLuuJqU96pZHPRRcP7dXnS+YUSxlr43ULPC8iTL3ou2zPKEpoWiKCk774aP
	 uC9FebMkhQOD9m5p4RQnWKPtZVQh2rX/OTby3atnUpLyD37QBIfWpsGcYoXmHkgnM9
	 ypeqvH7M61vGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADCDEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791958869.14044.16320600152117907501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0041a177fbffa84e86c453b072cc17466a462f8c555a8414e3ef9c7de691253c
Date: Wed, 28 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687919588
