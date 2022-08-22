Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404C36B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661128852;
	h=To:Subject:From:Message-Id:Date;
	bh=Kroj2nKHIos0neXrV3wlXRyHwBq7HiRd883UbkFv6FA=;
	b=VldAaqd17AabGOfx4hf/cDNoe80JItEBd68qlosrlLTede3Hyr3dAh9CH2jAZjlV
	ghyTLFRZ3qnxhyQdsXiWI2ejzEIL90GYAwVB5sm2XwdeittBC8O+BQJBFS76E4MEcjR
	vO+TcnaPJ1TwWc43HcJsFe0XbmmFg73hcPrC0HDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661128852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kroj2nKHIos0neXrV3wlXRyHwBq7HiRd883UbkFv6FA=;
	b=LoPvyOu4uzl1obbiLvwDDpI/yYfkw0/DDZiWi8atXq3ZWB6tkeKcz4HN9pFtpvlp
	5D5ygJv4cOx8slNvHVBqWrNHj7Y2Ylsel+aAGNus1cB1dkaqQdwKV6BLN+BBghbpIEu
	FeOckhGmdhLMgCSazS3GGAIdxBkLlM0QAOquWMiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2fec475-f8c35e30-cac1-4817-91da-bc0da776d2ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b3553905fcb863fe89d230564622f8ddbc592d9d1669be4c9b7c87dbdf1c831
Date: Mon, 22 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661128852
