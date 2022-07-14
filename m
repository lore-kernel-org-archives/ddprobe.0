Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2961B600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657826812;
	h=To:Subject:From:Message-Id:Date;
	bh=2Cf5ZGfTZAmoPxU9vqJrkcZf17PAXBBk22eMqeUjj2A=;
	b=KtairmdLV15GgHFZDkMNg5siGDV24W1089gKaqydKaEvslXtZqPQtzekkJOmvVo1
	jjgONwnhu14qTZUC/xhe9eJ4C53uWYiYw7EbMt6U9sl2YVgPYkbvhNBb+pAYRpHIS8p
	p6ajamc4J98cfymHJUK+NOX17W98j65z8AasaNEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657826812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Cf5ZGfTZAmoPxU9vqJrkcZf17PAXBBk22eMqeUjj2A=;
	b=Ehbxo7tgwofgts9a/lWPyUNGDx3fonhhBLh3A9NGbU1GcAGHYZPNTdUtQTXdlmWS
	HE5Jt7BmTe5o9WHWb849CC3rpH99VhOXeHqdwiqZo23PRWXcTyA1BgUl3XMO235cuK5
	Qb3ySekX+7fTpBEGip8TXpxAevP8e+c4mBdcYuHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe2da1c3-1416784c-d965-47ea-bcc6-ce9e3f5b750b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4252c4c1829dbc038abb161c15b7bc547cb636d86518c19f8c3903ed340556
Date: Thu, 14 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657826812
