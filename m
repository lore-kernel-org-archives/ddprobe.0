Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3247E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 08:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654157699;
	h=To:Subject:From:Message-Id:Date;
	bh=EC/MthCqIBzsEeeqe3oqS+zVdb9iDu7p8Cqb/lVd418=;
	b=L2tVXT+Vpyu2HSYPkmibWLADv0SihOw+BwDMZGREmmJsMprk72EfbDQHkRQ89I3Z
	QeRvkECDa7lCvyMRR0e1wz68T9eEdm4ATViJCa/I5h+gVI30d4rYctxMG3dwPVU0GJ1
	RA5z3Iitucq0mz0+LdgtsMGxaYHzhchYysJjB1cQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654157699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EC/MthCqIBzsEeeqe3oqS+zVdb9iDu7p8Cqb/lVd418=;
	b=HRRXy2gy4rnYf/gZ8TCvJ18mhCcZLHSBP8Dg8P6wBw1SzpxEC7Z09iXQW1bLiu/Z
	CrHQLVGLLHKs/V9j21uWEOl5FwYcza509hwQdIwkm2uYerYVWi4Biu+tQhZG5Q02IEQ
	YK1rWjt6uc8DM76UQAv/1Z5RgNmksR0WXataK2Nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181237b689d-090fb770-7abd-4c97-8c0f-75ddd1282cb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f2bed73cd5b834ff846ab10178510f4d7f564e5e072c0a6c936fec1d234954
Date: Thu, 2 Jun 2022 08:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654157699
