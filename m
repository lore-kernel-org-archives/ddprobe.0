Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18E023DE
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645013185;
	h=To:Subject:From:Message-Id:Date;
	bh=8U9WA8Is9tS3TppCVKNG6f54QWhn19lyGAehgAkdBQo=;
	b=Z/Yx4tE8USyl2k3PVdXM7sOUJvh85K8yJxzPHh3rv4GemLNGKWZh0leO2yAidyPI
	9BQWbvq3XDsGtyHHSYJeylV60cV2lfYHDE6lWN2nruyTEUMBJyy43/TVsipzW2kEKZ+
	GSseJ3um5oi4iiIszk75LFcliMguES3QPIDUfKMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645013185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8U9WA8Is9tS3TppCVKNG6f54QWhn19lyGAehgAkdBQo=;
	b=Hpqtt3Ant6xP66Wt1NExUU70avv73ELDyveiBn7HZNUBpBxI5H3XuUHFqJfaV2Yr
	hvhwGlgkt/p2Bq9UOWpjiX50bXp1z/JL8q/+fptQFoD7RAm9stvkJX/wVTUMDUgPxVS
	cDjkBE5OxcEpzldolTzUFtsngNipAs8LoqvROLx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f026d310c-ab29dc50-9c12-4dd9-883a-e428febae586-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a56b581bf3b409bd4b8edceaa3803a6b1c3f06759fd58e0c1749f90f5d460a4
Date: Wed, 16 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645013184
