Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B812A5ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646252485;
	h=To:Subject:From:Message-Id:Date;
	bh=w7nsQ79YPdFAlbqEfiwp07zLxSf9vCRitCIIuX0uLqE=;
	b=YGwVDyO4ncJ2d0dbr5R8Zvpf0fdXfx5gbVZsedm2+ApK9JPrUxWyW2AHjpJWhFXq
	lI23bjkPNqyzIqPp5FFOT7Ej79mswiiZ8m4AB7ljcfGyJah3LHSLXFvn0gohBikC7q6
	0461LSMT1U3vGt9PMBQeLYOfbvYOeM7rifrDY80Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646252485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w7nsQ79YPdFAlbqEfiwp07zLxSf9vCRitCIIuX0uLqE=;
	b=cd/DLJpNcw5RfrNR2V5pNg7mAumskQ03bZNBclAR1++9nmXO9JCcYnSitMeXyseR
	qxBvQ7/J7v1TYNZk4PetfaE9nV+zdy8k4zxj0Zus8TDev11dcDje/yM5v5h/DqWK2YS
	gx51vg6ReEQ4bIrJRUdKkr1Jo5RjMScI5nnmHe+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c4b68b6-381500ce-f4c7-40c2-9a71-ad21cb8338d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c131d8146ed44b3c0eec81f568d9520f22d7aa99ba90831fefc30cd31d41abcf
Date: Wed, 2 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646252484
