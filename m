Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653FB5C96
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B2FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688918228;
	bh=jKTO48yROfdEf31t0qk769J+g50Pehjmx7Kv4KIptUk=;
	h=To:Subject:From:Date:From;
	b=W+ZBa1ObKrYnjGz6yJQqwjS21HHVPoe+8ltK/R+zfXPbviXGfsOo9qDXPcw/FeEYi
	 yHS0OcjV4dILQ5cwsIEslD+jCyre0+BM5Ps31heVyzrwtCblQnXR0CM45YCTmFE+uc
	 SzjWEZPMmie3dHQkRh1MUGwKKZ09QYH6qfoZujwZW1Bs9asb5uBWsydnSUDfFE/6IF
	 Q5WSmqHZJKhvCsF0wWe+MKJTgQoZZH4BWSl+xpWQ+ikfKqfeQNfqkisIGs0F5fLq9Z
	 uvkVHfdneNh4IvcXyNiBnw43rDR3+VvmJY86eOo64P/CqcGk6VYennnZMTLby1gUwV
	 XC8g9y8jIIVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE15CEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168891822873.22052.15995940353887866439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735d838d9236df5dfff8ebfc34d622e940022746bf4dc84ba730ed7b7f452126
Date: Sun, 09 Jul 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688918228
