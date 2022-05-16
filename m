Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396481376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 18:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652727239;
	h=To:Subject:From:Message-Id:Date;
	bh=JO0AXt/awZzQ2gIFPR/OIJ6L1QAZ/4wVmygnpuIQSSA=;
	b=HXVWTNG3X7rrR77fIruL4HW91hoqzmLlkX2TMHdoOitTiXeR8dZTgFhcZGrGn4cZ
	YqC13iOazhhOCRC9A/D1RrItelNk6FaGUWHJxeEgLQUsnI0DnQWQFeQAnc3LZkZJa0t
	3ue0tKLW9ufjFIhUQPi8o1s2WNgjJDPpRBmhZEPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652727239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JO0AXt/awZzQ2gIFPR/OIJ6L1QAZ/4wVmygnpuIQSSA=;
	b=TKVt/gdUqrksgM1yFuiL2jXWy1U/CK2QUg0YBnOm9rWxRzAvU8Y5B1Y0KC5sffMX
	gCVwjSFZXi/obWoYiYJ4REBq4kMkSmSwonhl2ao/I3RHU02MpmvaAagux1fBZql2YUa
	Oace6Md91FzIE1lydHO42ngGOrBHO8KyED0LZDeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce38527c-6db66818-db05-42fb-b263-e99719f137bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c6678c565b220015dbe3fa40ea15d01ee5b845794d23d58715c8a9b996a9a1b
Date: Mon, 16 May 2022 18:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652727239
