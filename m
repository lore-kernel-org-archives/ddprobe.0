Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1C281D
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647216384;
	h=To:Subject:From:Message-Id:Date;
	bh=Vs5myyBIsUugnSA5++rGIuNTc5tk/y2+0fQFWsZl3fU=;
	b=fN1oMi9/1nMomAllXzZaQVKCXeIDnZcOHTy59Jx68soBiGP9a2RXJ1isU4D/AEsA
	2wXKSuqktk0m/BXYp0h0NS7WvsHX9qEY1a1nkfvfMhMm1YDb27Hg9Lrv/nKzGxBCflm
	9/08896zE4UV1HscMPVHGaABaV/WRUl2Yowo5Y9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647216384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vs5myyBIsUugnSA5++rGIuNTc5tk/y2+0fQFWsZl3fU=;
	b=e6T5+t0p4UXJSY7TAEWCYcNM5ajScqN9iRE69uZeAvUo0AjQYSaJ+op53r9qtEv/
	7BspUXVtQTlVZLWi4C+CPesAKDDb6vzG2Ag9FvhM5iiHX6PrmYf2h+7Uu8vAlmVb6Tg
	WAPynP7YA+PihUESQV5/gWf1+LOr4HxmRw5ZpyyE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85bf5b01-abab20f7-c5d9-4f01-b56d-e453d2ec2407-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82800726113c532064472836b27d8a26ef132d4242c43e211102258eff67545c
Date: Mon, 14 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647216384
