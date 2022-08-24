Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4463F1110
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661334652;
	h=To:Subject:From:Message-Id:Date;
	bh=o5pg5F6Ie/EyGGUFLB8t4oSssuT7qVMyBrBnOYpCYTk=;
	b=k5SUUt7DgwIp8s+JJUE+iNMy3b9QzQRwvt5JwabNGzMtrXAoWgoZucp8D0w45moV
	/AcSEoMQLZlxmzKSK49ZY7ucrW3/G5jZXWCYOsmVNet5upn5kMQLeAzAWJjOeXuORxO
	k5UWp8KpY+/WLRzb9hi57AU7erpnVNSz8qYZIEZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661334652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o5pg5F6Ie/EyGGUFLB8t4oSssuT7qVMyBrBnOYpCYTk=;
	b=ZeBdrNFIPaOFy0Q1MQrCAr8v0wuW2cqsyXdGM1pIycDUBny9gM3dNsYN181A5Vzi
	nWs7Ac62lhmqVpiyQwBN/4nskOtWBwV2sMLcbCuqPCDBEyQ63LlEqpzs5mx+ar4IMwl
	ED7ASVfWUGO3vB3Cu967C4YGFgeszXqAP5l/HEc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf430692-809f7369-7d77-4d3a-8477-7424d83475a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1afe3aaabc2a5ed3b7659f2b448503196b39c7cee0c8f72372e8eb6a055207f7
Date: Wed, 24 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661334652
