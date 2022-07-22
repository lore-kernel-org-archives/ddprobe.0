Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DC04A09
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658504212;
	h=To:Subject:From:Message-Id:Date;
	bh=to64ysveqz0a9KxmjClQg+roNgVUOSHyYagCW0CLeGU=;
	b=TFE0iHjzIU9AbPs+WAYLSkCnIemjcZjEXHmNz3ZUPr9Mscf3Rilj8VNviq8Assxz
	yvrZB4KlOTtaYSuAzolA2Yxe/eEYKoLbKnQutkkl0Xt5ZirkK/GT579aYJOJ0X+tKDi
	OV9VR8XUOs/U3/lNcCTcN2Nn+vBWVu7MPyFU6Q+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658504212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=to64ysveqz0a9KxmjClQg+roNgVUOSHyYagCW0CLeGU=;
	b=fC+JqtV79KKEA1lmVwwnubf7kKmcFkSz38R8T2z2fqYWIKbkDjbS7KMHNzC46pCq
	OlnLtg1binxGzTkazSvnbdCPy6nfe0wNMXeggiXBK8ziEYXNpeVzs4L2mU5HRFubH4y
	Xd4dUd8ijtJX8VEjtuXsSllxQyg/fJASNeFYIyMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182268def65-895241bc-2c80-4e78-b58f-38bb50b33e32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b8abbc01e6ca20fb7ae4c511b26c2b64f2d5925770d290f5300fbc56a43a5cb
Date: Fri, 22 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658504212
