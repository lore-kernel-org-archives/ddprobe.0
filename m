Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBC3320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646035285;
	h=To:Subject:From:Message-Id:Date;
	bh=aM2ihPPhC0agbhk6MQrVgyTDqn+R1zTEbzGbhHtf4JI=;
	b=PbfDd2Twf3gqUSalpTjoQkCImJH4TqQ0b/7qWQOflH0yvZCfoGlRSW5W/7LLX390
	vcAZvwff2ehDYR5ZqxFPALVxXV8QZp5jIj5DEGMxdsHIqN2Re3huQ0gWBSGLWIgV9FM
	ltNAU8AWB9CPivWtm+FujgLDCJW8VCO2isFc7EUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646035285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aM2ihPPhC0agbhk6MQrVgyTDqn+R1zTEbzGbhHtf4JI=;
	b=IuqJXni7KPvxI6X/6too8CPfC5wEPVV5ZqR2kA6zjXdbaaUXkC9rDQk2WIXiTKzJ
	VezYhychX4jUrvjV9datQIfxX0w0t2BwDi+vUnqVLVD/seN+fTdPF5AE7RAKaYVimNK
	DRyYvpAK+1RG0h+m+03xZWbf/SeqbNrOIfewrxM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f593398-dfd1a72f-25cb-4ffb-a4e2-7300bdbf8f6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7c3ffdce56e0908fcc883657cff0100a9dddfb939abd06abe5a4daea80d91fc
Date: Mon, 28 Feb 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646035284
