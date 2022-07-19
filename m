Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011F03D62
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658248012;
	h=To:Subject:From:Message-Id:Date;
	bh=qIuBuw45o6VlhRNcKg6uRPZd5kJw5aFiikCTfYOCUjs=;
	b=DYniA6z8GYPmOE3e8Q+ojekpMXpY+u+dBsBuyaU48HiDVTys2LcFRpGuGmqhvps3
	L/NsGmE/sRfnVWPsyYidE79jEs80V7t1xa9GbifCNeNleehARJu3tnBtnmoQf/oQ99z
	Hsy53KHTYbYX+j/4F3naPXULlmK5rtOG3RTWtf8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658248012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qIuBuw45o6VlhRNcKg6uRPZd5kJw5aFiikCTfYOCUjs=;
	b=QQwzFbvxw1fqvi5up7SG893/tWwPajr9tGMYLWx7c2x+wHNi09/UmgrmqMZ82Lo8
	FKM9z/FGDrNiAi5DIWYimTkWEHn6aJrEpduTHVQdP2/8b/G1/DcPR1LCPdvYaUeY9vd
	pq7vAFunsISp3srY1G7RfVcr25K2KNl4GPvEIgME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821748a1f8-a48c116c-14ec-44b1-b67f-6f82f27e0515-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97be2a3f4dfdf76fbfeb76954c0691a4cac188255d76b53c15b0128077e6dc12
Date: Tue, 19 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658248012
