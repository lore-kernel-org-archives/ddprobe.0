Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11732A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656574012;
	h=To:Subject:From:Message-Id:Date;
	bh=ARm0HweAZRhzA3AhEjznXX+ZYNZzeSoqoFjVSylnkY4=;
	b=OfKnwTLjfHMWBimBWi6Yd+XSfsvjgaK63OZhdPsxwBydZ6qm/LagSbmQQogNt+x6
	LBAI+0sueMBP1gOc8Fs5564TXNE64qXg7kj2E9RmS2DqQ9KA/Qrt+6VaCL3opzR4Vfc
	Xl/EDwIwizFC3PcIsDvQnTVPNO+Gzsnd47SwJAJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656574012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ARm0HweAZRhzA3AhEjznXX+ZYNZzeSoqoFjVSylnkY4=;
	b=Klb2PJGgYkXIWE/LYuLIp4TAcRuBFFa2Q4j41qzxjz7MQH1sVPiXwELL5MOj5D80
	upZ9gqlQFZnIP8hC5DXZm4XCgLa8VZaF5YAO+V7pEXQN0fu3s+R6Gd2NQUxBxM2kkVA
	ftYWSWruu66I6Y8TGl8f09UyhC78XxaOUc+MrNME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3816b9b-4b07f501-561f-4797-9e51-82cb6404fd38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 689b4e05797a9e7c8b0f49e9cf8a5f156c3868fef647f2fb52807a77e0a2e736
Date: Thu, 30 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656574012
