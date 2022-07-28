Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6938210F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658983852;
	h=To:Subject:From:Message-Id:Date;
	bh=Ytf2HQGiI0MpNAF5J9/c6qz//a9uE6MOeiV8kOoT0Sw=;
	b=S66iEeMCK+IYDfFbBlrtPnLkhPfw/GxMN1Tx2SCwao+pn3bileJWBsNZQ1GHG5VK
	/1L8xkfsxumc1QPs0+pUP6wZD4ShNtktDeh4cBmq3q/LwjwPaUIS4dH58BTKeZ+k1st
	KrCjcAfTfyW+/+Y+iCuxssuop6bIOS2BK51qcSds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658983852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ytf2HQGiI0MpNAF5J9/c6qz//a9uE6MOeiV8kOoT0Sw=;
	b=GDb2F7I/zwflsC41EAO9H2hzMeAlV+FVQyh27hfFvnwVmsPI4T/izhNrtd/qogW3
	eXVqtpTDHNgk0IzGFwnv/TbpCMtK5pk8pm5ydG745rwiVRnjQyKj7clcvG7kRGBCjhl
	DKIHb/4UExj3IgRFruvD9cZt2CI6SPob7Ri93KC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824324aa77-7e04a94e-e7d3-428a-a484-46798ab6108c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e26e5cef730bb4e01e0835b5fc5c1e52ccee6cb3e05f7f8025332ef6feb21ce
Date: Thu, 28 Jul 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658983852
