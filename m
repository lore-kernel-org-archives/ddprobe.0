Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C0A7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657480612;
	h=To:Subject:From:Message-Id:Date;
	bh=HcoGsCBHhZBXRpqugOBo8hWEmKdKDA+eWsXqp5KZM4Q=;
	b=AhxVL2EZeULT7iQUTLeKX2G6xTvqA57s7D/pBI50tt7PtJUbsXD/vwgamMOCfQ3I
	OX1wULM/ANRPvmAF7DaiUPCpodG8hbSkzSWAS+6rUbZVPdMI5ayYTZJEGWBaae05I7A
	2uIh0q7HzgLU3qjL9CKQQ/zRMa6rYqnDPFHeUbRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657480612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HcoGsCBHhZBXRpqugOBo8hWEmKdKDA+eWsXqp5KZM4Q=;
	b=UAcxtfhOQahVxkjc0KrYahCMg3o1n12rsHWxGSFssD1AvfXmgLpodjUAxxWcIhty
	L76OBYyjMJZGhi9/tYlW0m/tRwWQ1RagRWaH8jEuy4VnGckACtdkDRqF4eXvtvy8daL
	9FhJNDAtJE71eAldBOVvC9R+Bu5LH5cd/cwaw5VU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e98b09d6-2fc95e21-de03-4095-9bd1-b4d29eb97358-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 354f7862f606bd4f4dc5119baf66bba84d514b03269726759c5b0cc3bcd31753
Date: Sun, 10 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657480612
