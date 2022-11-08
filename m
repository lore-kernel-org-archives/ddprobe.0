Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43878F78
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D481C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667907054;
	bh=yfJa0JSE0kumZYBkbsz7J8TqL1StkDJdYGB/Wrzy4TE=;
	h=To:Subject:From:Date:From;
	b=BmuSPOfeoPEG/4yWVqap26yxNqv//hJCj6KIctO41HLIjhqzAq/7Tfsr8g6MCi4Qx
	 AKti4fbE7EbBIH0IByCGv1NWMMhYsRuj+8cXzUkEH+q8y+AiqE0vliCM9cxynTpyc4
	 w76BPfZbqSbE4Y/S37MC+4+H16mEXpCbSgWqvpH/QElj5VIXm6pNWU28qtU5rIzrFp
	 Chsi1MgYDni3CEwpsyYyQe6k58zdpjMf7g1xKF9tns9UydffEZJqiLxALlaU+8jENJ
	 5YI6zu5z7oRIvhZJbfvPehiaemiwOYp99wRDlMZowLRljCWvUFA4m5asm/YVs3vl85
	 eiqC2Gkpng7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528F3C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790705433.32243.11845077016456116823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338a68c4cc7b3a60518e346aac0ce4d84d23fc54597ce8caf407950a89f30b16
Date: Tue, 08 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667907054
