Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3C863B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661076652;
	h=To:Subject:From:Message-Id:Date;
	bh=xyuAGB372wlEOcgE0Rayyw9hvWlWM9x9u09OMDrxln4=;
	b=kh+5vKYgnjCSO0rVVVLqxedTkMfFC7CiiqckZne6owzKtA8MiOL0cVVR/J9bUFcf
	h3G9oy04CktZl+xkKZg1P3X2sXM1OC3eVlWzL8EVNszWvUoGbfL3Ijlm+pF3/+mtyrF
	On/RGQF4gVOIjdMypH/NqDtMhy0PT4xCiI4vTcto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661076652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xyuAGB372wlEOcgE0Rayyw9hvWlWM9x9u09OMDrxln4=;
	b=kYz5Mcv44f7XZ7WEYhmhDE6Nf6KQamI5fdar/ZGmhJBzq2RWc2bMDOg+Dp2tKblW
	NzjD0ycXnYelyiKD5OJnauyvWJAjQWejH5lALBOL0BtZ9BYJlZ0n88tbd17OwetpqJx
	mHzELM8M3nJdmxa2zq1p9uhWEEjZDuzd3nOhPvds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfe24208-ecd49046-2647-4a54-9092-6526535b2dc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c302502e12fb0a8c8c22e594bf66fb6dad7f27cfeefc21b7826e1cd8a26a8f7
Date: Sun, 21 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661076652
