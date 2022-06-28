Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18FD394
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656395812;
	h=To:Subject:From:Message-Id:Date;
	bh=Gz8oBmiWuHjp/IOBSl6K8DT5Qs/Zptt6VGn47K8SIsY=;
	b=jeDlQUqcVRCF+uinbHN7EDtQtYa9oVtcifTNnAsMukOCn0rA7WDd1czK3kM8/h35
	2Jmb/5/n+P9a7/3fPTWRjH/7N3ueHPpPo1NPf2egw8+NL/8xJ8k62OYr7h47yTF/j3t
	jT4PSfDDvzZomNWWhzue6NIgifAYOWmlWED/qetk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656395812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gz8oBmiWuHjp/IOBSl6K8DT5Qs/Zptt6VGn47K8SIsY=;
	b=cCTgQiaBmp7c4bjXg7yY0hloT2DJMiHFu99o4hY4OF98KDh79AwdBOdLetG+2QEg
	DtF2nAhHCohknx0dMKsCw4k1R/HFVjyYtuddL68cFPaS0jhkODipQQlw0vtqZHMl781
	UDpJrsOr5zrmOT/B4jfKGHAUNP0/AoA4qqTNVO6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8e24da1-ba24e351-f0b2-4408-9929-32a19069f780-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dacc9d8aa5d2c3a33675dcd33b964a11821cffce09d628142385f6d685b9e36
Date: Tue, 28 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656395812
