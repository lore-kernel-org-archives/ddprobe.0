Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD45B7478
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645711584;
	h=To:Subject:From:Message-Id:Date;
	bh=VO0Lo9KZpv/QFeISA/JdpdaPOeTXho/fkPhLcC7G5R0=;
	b=gASCkyOk7Smx7i+NPt8JHeLRBO0S0bplwVxs93iRYRC4PuXPLXzYOAksLaWMykBH
	TKHQE08m+/VE4ynJhlO7BsOqRieAuJ+PU/9LGnAoE8R9uhqg57ng/OQclK/i/qxhJYQ
	oCUT9zRCeeNwTMwzHZEBNeNcqr5CCr2UmlHiWKtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645711584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VO0Lo9KZpv/QFeISA/JdpdaPOeTXho/fkPhLcC7G5R0=;
	b=bGiP2wQKUu1Ge3K3WbubFS3yJTtfeUAdxqn/nEl6ZgxD0ew06yQ8lwZ9N6duy1Vj
	aXJWCsYMR9ak+phAlVXqAIHtpfhdAazYbcIy7pO/4CkhLYyRyw1Sw7G7B7U12Uo5+iU
	5ghhylvysjKx7p8cdHpRaxeUU8VYedMj7RmLXFk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c0dedf6-b4183a9d-dc71-4cb5-8898-53027c2d2baf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceb4b967b5853ec8709b86103bea5d844b1062149681b4f197969ce9f617ef99
Date: Thu, 24 Feb 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645711584
