Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204E7E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657833412;
	h=To:Subject:From:Message-Id:Date;
	bh=hTUptmawVWit2xUk0wgtFsDKZRj9BdxwIS7fNtmhIQQ=;
	b=I5l5pQmnxUo9SNMSPfY5uEL2o7go0rjK12AWY9CzKMdcBaIQJlwR1GYtzI2wKEM9
	hWkvf3kK95k/m6pyDx4vgcZ+/8xhOrhYWb52l++I+VKe2HBqt66LgnyVCsa7bFjn3f0
	uPkeIsELAKNq3LCeYfE8fpzgihkAY84TqL1P2P18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657833412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTUptmawVWit2xUk0wgtFsDKZRj9BdxwIS7fNtmhIQQ=;
	b=PvCP5vTNwKbk7ZVSdWrcn9Vw0kCA3ubbC8ueSL/ofmBzqgUKocJEFbIJW15MIQy7
	nJwGflZNyG4TltF8uGtnjNe9rzDcS0dM9QXWvcLLVWRZoh71Xsrcb6SREtVERHUzUQ8
	zQzWJ6tWYMvjH2s4mNpwkHqKqv01i/EdNxAWeo3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe9256e7-c820f96f-62eb-4789-ace4-4538ad7324c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85905b49d6adde3b3aa287f889dad92ff45e7ade44387cd28e8176b97d9c8389
Date: Thu, 14 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657833412
