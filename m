Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497F7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 03:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655350859;
	h=To:Subject:From:Message-Id:Date;
	bh=DWV0oUpvh2NwNUcojIMwW9r16o015f6LRo+z6sJ5mMA=;
	b=AoP9Y2UP+82eDTnonse4iwfSXeJaCJGd8jgqSm8MU2Us3UXqZ7h5dbdamGzUlIF2
	vT03HQ6TUs+wBaPAtTjVlnF2P5qkI8drD7X8InSOg2+fD/h5u4UNzYyMqDRSgSLqsa7
	hip4r8qV/WkNc9sQcFgaO1jNRQ1Um68tV/C/y7ek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655350859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DWV0oUpvh2NwNUcojIMwW9r16o015f6LRo+z6sJ5mMA=;
	b=HMwWId/P80lWJbBNDNxli3saH1N04LCR15alv1TSYHnFTBmJ1iLgyEeEFcSzcLtl
	sO1cueE5J+AgXvG7ahTM4nj8Bv9WDwUecWgMFnOKKvYZOFd2VeYe1pXPNJDp4+m6YEO
	CZIyDXWX5vBctR54CWGy+z+kHB5xNwPzeoipxRvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a9995f3-1fb6b877-fa52-41fd-a3c0-81fa0a258311-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62b619c9ee47a18d27e2e3569f0bc6c8493b2b3976e4e2201ebe56f53d6e687b
Date: Thu, 16 Jun 2022 03:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655350859
