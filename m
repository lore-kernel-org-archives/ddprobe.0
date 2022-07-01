Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A1410E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656660412;
	h=To:Subject:From:Message-Id:Date;
	bh=v57gnzG77XWv8ZpeoN/8qR++YCjFUrIXVPjWWxb5DJM=;
	b=dX4o2OnEiLjhxCXm9TxIacdZ5M7tQQWmnvlJ1RjfzSJbZY42tjcZvRtNVkRTBqmd
	X6b8P+4bL179l3xqhjBuoWSGJyQcf5PTLlOws5t88sPglOA15ZvEeR+MVO56XKo/YNZ
	9zpWhWuVDcE4z54UGGbfPnr1BJm0oRrVnU7lv/Ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656660412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v57gnzG77XWv8ZpeoN/8qR++YCjFUrIXVPjWWxb5DJM=;
	b=J2pCL2yAxtaVIMAmshP1oPjPTiIzU6QylVRNxwhub5ZDCjHbDp2PS5wcQI8pZUEi
	LKfQugvEOhrW5Rutp1KozXF1Yzwz4wJwKfI2K0OmlOkzAldo0142s2A5tWG19SVKYTD
	vct4U4FJBoeFIoKW3ilFdeqzZ3XZu3E0NfZAbDB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8a7c7b4-fa4ba89a-c1a8-4ba0-a241-e9b9bbf09c2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb415b41a8d115a9fb8e647165aace88f72cab9c4265b437c63c1825de472d3
Date: Fri, 1 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656660412
