Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C3E3D67
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656354412;
	h=To:Subject:From:Message-Id:Date;
	bh=lI65QnZVAumXrNHxamIz7DWSXzCOqKsI1vvg5xGYsVQ=;
	b=Wut+ANmXwUtJyLQTVoqf6lknpQmTodHy/JQgK5Zna43EQsIVqeA6t8cceRTq5lgG
	S50TkAfpl9d2cE3bg+g7Sdz+qGwNw1P91tew9O4FmzP3K2LmQiwTDTS8+9WduxmcT5e
	a7sTuaszkXIQ4nyi+lM26R5gxuY5ho0xz9NFaUJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656354412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lI65QnZVAumXrNHxamIz7DWSXzCOqKsI1vvg5xGYsVQ=;
	b=JvPi7/N8ePRRS34fY8psljwpXHkgpjtO8MXV8/qn/RgY6KZywTglAzA+btiCdaZQ
	7BA8fMyS6PeLdpT5vFm9+lpAtqa5o4BMwT+Sr6eYxiLoJME80ZhG+y1+UDDIEblO4Y3
	qne5jwkx6B9ET9XY0S4eMYeLYc698o/CeEVNXkcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a66a9700-16eaf98b-93a9-4250-b89a-645180d416c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e429834f19a42e523f6ddd4822d0175930df8e75ff138691782cf01d1a2a59f
Date: Mon, 27 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656354412
