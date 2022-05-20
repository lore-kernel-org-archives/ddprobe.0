Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870E7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653058559;
	h=To:Subject:From:Message-Id:Date;
	bh=xORBTbx1JEfGb6KOnB31EbwUwhtylvY8ukuWcU3AbOE=;
	b=lbmgXpVDPlTS1g/Q4RyQvoQcIULSHOpiR8XHlegQOUV3NC+KXIViwxeB4AtDwR87
	O+gfDruktr5gfHshR6mIt7Bqqb2FWVvUHTWksU6UntjHnGhgOqR6sT5w2jERrvJCRw2
	azeUlLvLElOIj9fwyuX9snpHSPCyzjDb7iZ+9r0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653058559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xORBTbx1JEfGb6KOnB31EbwUwhtylvY8ukuWcU3AbOE=;
	b=Lk5JDR9w7DUmuI0zoTfUlp5+au1iGhKDd62qK1+4jtzKxhkZ646BMlWV5r+MLdRE
	6+Iw/iXGmyQ/z8HXam4V+djvwe/X6XAMHR3xUYpSb10GFPT4hs6mnv7eMlRL0kmKZuS
	tYE87otjYS0gKkZgVtDT2TNvpvad79ys2IfvHUdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1f7dd6f-96583891-feed-481f-b77e-e842f1bd230c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00b0c02c2a9f1cecff40dfa87a15c6647ccf4e2c254b8f8ba09f936bf83057c4
Date: Fri, 20 May 2022 14:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653058559
