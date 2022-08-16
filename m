Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFF03C05
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660647052;
	h=To:Subject:From:Message-Id:Date;
	bh=kVbnx8gamXy766Mn7IwhmizsVHAZNNrN8Pp4hiwedhk=;
	b=lkA5dU1hXWBjzC9kM5WwrQzDiiy+0JoeJo4VbNI99vj5UzG7FFqhpMyNRdYONkno
	x8qRjnDWf3xrQ/IZeYlL2c2SB6zfnywnoD3/3Bxpv2c1rwFeLwyjnd7p5IsDHXkDZli
	nkMDpQMIPtlFBlqNrwF8YBEgiN4Zvy9D9JDjpDq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660647052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVbnx8gamXy766Mn7IwhmizsVHAZNNrN8Pp4hiwedhk=;
	b=igBxtDq4j5X7syUErtc+fVGiJjCsinD/cAKabhhqtPJnwNfFMIyHe92W/+cioSTO
	s8gX5OM3s3IkcK6koS8oZqH2ChwFMQTpJpVKx4YQbUNln/j3y/b7rXaAg3+/aMV5c7J
	ChcVLbjd+wLKCeFTYcLQrC4NRQqBT/QBY7QM/KX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a64714e9-4e4876a3-083a-4bab-b6e0-b63e1191a3db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02533cfb26b8e95572889429b23a742550fa5ac8f02534bef2ee5446c5ef84f1
Date: Tue, 16 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660647052
