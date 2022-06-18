Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBC87B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 15:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655565539;
	h=To:Subject:From:Message-Id:Date;
	bh=k96bcSjSHfEgNOw5osaLsoFpAqpKLFWlZLf3cx+/Sfo=;
	b=hnEZspkko09lvoQP9Gv7F4EMDdCMpm4wIlwCR40oJtsce4FaMnuljnqq+xkRYDje
	SkyemKoIrxKLXyIbKXAm3/WAzuAafJcZKZmFNkrct698g9bdznbM6pC/v7dmIWTQ13c
	WAtaQ4NarQ20/v/LXgr6BuQ0DXKi1wvzOVt+eF8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655565539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k96bcSjSHfEgNOw5osaLsoFpAqpKLFWlZLf3cx+/Sfo=;
	b=RQ43Wu3C62v7Tpq8SMcw42aO2c3z7EfW9FAxGNq6D2wLpGopCdAxHZShLdh6++9w
	pialb9Jem2X/3aW27to6IwNSr+/JP3ebpBqDDLtp6MFo0PK8luRP/ah9e1Us6JSFE++
	oOUBMgclmLRXMdz6G6IhMnJnjH06xuKyAKm2nh0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181776557ba-af17f16a-9044-45eb-8292-a11cb8ba4e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30a9e2f565406addd41c740e4e82a65396bef40f28e2dc17b62227761b28443d
Date: Sat, 18 Jun 2022 15:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655565539
