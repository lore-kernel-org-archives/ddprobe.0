Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3297E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658572012;
	h=To:Subject:From:Message-Id:Date;
	bh=BP28Urs/eGbVmssVV1oNapZ7VrNazodqnxLX6tLV1jY=;
	b=FkRsNEuw2yQGw6+/6nZ15pDwINr1ih3GbO4dSX1xr3eMdi6oZdxbH4b9hoS343qP
	+UblVqxhDuBjFecoCz7eAP3kjAGGcYAGAxeDb8gm5K8+qzRxmFaW+Bdk/BTfDskfRau
	TtLGwM8t+RteraVyDQsdWOXG23qGYePJ0TyTIFy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658572012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BP28Urs/eGbVmssVV1oNapZ7VrNazodqnxLX6tLV1jY=;
	b=W5x9hqD8HkxAWgulThBTj8N1XhHAdOixe4VDhiIpTi/pVcIehGXef5r9hK11IywD
	byx094IUgKRvSbZCmCR/Ko8MrcJXedXU871pC7cDgo+Mb2cEzmdrfBN0Oi76MPuF9CA
	FKBqQWhsCBahy2RqA60Ekwd90HLWidrWNXIizWjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a987b3f-749a3b9e-94bb-4922-9391-7d48307bb861-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 566b4a0128de4113287e98667290ce94667749a1cdb4b700799af8d70e052ac5
Date: Sat, 23 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658572012
