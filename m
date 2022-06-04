Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1A137E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654382699;
	h=To:Subject:From:Message-Id:Date;
	bh=iq6Dzw5h6rvKZrsKwP9ZTtY2RtYyxaUqtvFBfgai9AU=;
	b=d6AAGcCrt3a4S7EE2x8pkIl11kGSF1JtZrD/z1XY0uQyYY5OHvSOXIDbaZ+LyMkG
	suF6fG9Uhlup3pNcFZTeVO4/oRaEe1QMS0jwdzPdvMYMCV5ksW3DnCkPehIST9iBlAs
	+5na6TH0mz+UswvNzjOFEP4yu6S2wbQqgsAqJH8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654382699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq6Dzw5h6rvKZrsKwP9ZTtY2RtYyxaUqtvFBfgai9AU=;
	b=BCx2AKRhITHYjktra0UAUnjIb5LF1Vjx7gEiSt9ymuk9Pq/lSuig+2qLcCXHUfyg
	a+ZNKDvI1sJo/n45tjm74nEcblBkJhgtbNRGQh68T9IpFB2OvSNQc1JjHLep7VJAF17
	cuYH0nMFXeO5ZVO82OixnRZkXVgMHeuUOTLQwS6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130e4a32a-95535550-8fec-4742-8082-c3893b80da0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b29261619b6fc72caabe7855f6d18d51744ea6967e8f613c8a8f008ab80c152
Date: Sat, 4 Jun 2022 22:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654382699
