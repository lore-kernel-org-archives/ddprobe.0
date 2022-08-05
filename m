Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643A7A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659681652;
	h=To:Subject:From:Message-Id:Date;
	bh=s0OtKBQXOWGpx1KCNAQrT3ENZlQxMkiabOg0bsbbq9o=;
	b=TnDWhx3KTTwOtl2nRDRVxP+eWQCM74FiYeakCwyers5Yd+8AigiR5moo79k2E0+5
	ksyZtoEIzLoQdsikCOwXOnMdqlSudWVbgyA5R/GIRGROUbCBue8/ZEgrID1cSJ8Kki5
	XZgslD12d7dzzwjRByaFJdtOs5xoBzP2hXtoHfU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659681652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s0OtKBQXOWGpx1KCNAQrT3ENZlQxMkiabOg0bsbbq9o=;
	b=dDOvdB5/q73VQR0UMgHDVUdqTZpioX4lUOa7JrjCspmoxyIE3Tl/mnfDtSAwHi3e
	a4IgYxm09G33mbBF5sgSiITY1lsOCRMmJYwS+ewLWHTe6HPFIef6bUqODZPh1ECsGZi
	2szHk2Z6eyMwo4QwyulxIXj2qvEkTz5enR5kWTLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cbc3f38-794563a0-94da-4837-a5e0-0358b027712d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd8f94cf8e02ce47aeaa03c125ee5897891cacb5c907ca59890bb3f8047cd150
Date: Fri, 5 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659681652
