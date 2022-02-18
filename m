Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14F44C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645227685;
	h=To:Subject:From:Message-Id:Date;
	bh=ew0Ee1XAgr5tLvtvkdWzxvjFOJN3g6V8vkvAHmu5JRc=;
	b=mogKIsZZuLK9DWTvIa7JYKav5QaTv5KWbkhlq9mrq7MSwlYWnwBzMfMywJCmR9gO
	kxXoZPmA6QCXBDNLwc8u6HOMj8Ppqn6M5ecYTAKbeSROtnumzCfjR8I23OPOhRwlgUE
	8wxat6FeMmdTOFR3YS7mKnJYj8wtG9UgR6T+xRjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645227685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ew0Ee1XAgr5tLvtvkdWzxvjFOJN3g6V8vkvAHmu5JRc=;
	b=h51D3Iq6yHKIhpXnkPvMfHsPBhxURIJK1JTXtqjkjYqqJfAWYCKMPAQvMIJmxhGh
	xTIiE3B3TvFXEvYyE70X3HFT8HGrDUNjqC2lNVg9bdYMH5Q54fdoAxHD6gI4PTAezCM
	zQNCjntjYoSt/oE5IHb7vPEMWrFNFyu1yD9yaSVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f363409-760357d3-5cb9-491d-9ac6-3c92874d5e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bd57d8d2b659a6339f60f4f15b26ec2f5ead9aa1e73de5ecd3901b44d3ee390
Date: Fri, 18 Feb 2022 23:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645227684
