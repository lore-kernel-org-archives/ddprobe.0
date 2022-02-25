Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972247C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645805785;
	h=To:Subject:From:Message-Id:Date;
	bh=C3N01KspomUpvGIBFuK8AV9lbkSlxxfu2FG1Q3jidtE=;
	b=PsPHkmrBouaTRlQ7Sm3r9gUtC/BPZcp6bSEOLSiaX4bbZj0Fn+YOyAqQil8BpNW3
	YCwSzq0EChyvYBsP/ds0BLYRSDeDPYQKJeUlMYS5pTOtGuDIQVOy5vwhMK+08tl1aNy
	rthbHO6g+M9VqYmNT7wUkSA2smJeHkbiMx3QN32o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645805785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C3N01KspomUpvGIBFuK8AV9lbkSlxxfu2FG1Q3jidtE=;
	b=VQPPjTBUIQzrW9MhYKWNrZJkVMaBE9auSTJtwEmXn4sqlyL2wzH53XQ6htPR7MGD
	PDasoyo6v99gydTy22CY52k6g7NvERuFe74q62I2/JJGA9NLe7+GKIgbdBT4XAG+kzk
	lu6TOmyxGQDmV5WjyXptZBZtqTkeHS8WRbtAGYcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31ab4ef7-f8fe2810-6217-4ea4-8d43-479a54fd1bd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 549ed72835b47a6d32942b022cb439e0b0d6ed7ac4a4a0e1c68a7181c3c982b2
Date: Fri, 25 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645805784
