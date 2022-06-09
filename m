Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986B77C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 01:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654737000;
	h=To:Subject:From:Message-Id:Date;
	bh=oJedzhqwED16m+GBWyqFS7TSViP5seNkSu19HdWHoUg=;
	b=JqXh7VCSx9P7sTxzWemuhXv3ZJ2xRj/7e0q2aBWG7AuUeF69M6qlCM1HNPwLqs3/
	4G6u2qwjRWqar0FcNJ+QYYZd0Cayot4vcMElploYRukpzzsl+ItxfJAodAOK0lAhPRx
	AJ90Pc9m0ppkT+zEAKnjmLPIH7BWDnNDgVeR7TC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654737000;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJedzhqwED16m+GBWyqFS7TSViP5seNkSu19HdWHoUg=;
	b=AUwkBEvVdwNT16OH6dQBbUdE5UKpOl6yGsZLgMaPL6lKvgDPJXG4dnuVhTO0iAyD
	jBnsDbP1NnUWwBAl4+EAr/MMZCtgALCr8j3rbBfNNH2L4cHoqTEiFga9HHfwKPBVWFj
	S2Xv/+4SA7osKwwbeYmTS2LYZ4XzHS6Byc9wSFiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814602d340-4be15b08-3151-4cbd-95f0-c5cbef954ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58da563084d8e0abe3fd3083ebdbdf3078ffc29b78591664dedf8f1ed6f154e0
Date: Thu, 9 Jun 2022 01:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654736999
