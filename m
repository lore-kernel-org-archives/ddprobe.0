Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284A64C85
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657411012;
	h=To:Subject:From:Message-Id:Date;
	bh=6C2ipp4BN1lrinw8PqZXcwcqKASVr9cBOFV+NjaN86A=;
	b=AwrMTNcpjcEMOPyrB16wMKKHHrnUY74cdQG6QJJTbVMaKms01n+5Z7Twa496/veg
	m/1cz21xb7riGeN3338l1WXvKSsDHkqhZNd9YhNJGHTsPnZbDJigeiz3KdwHGHD+oB7
	6JsdlbfYsqW1VblrVmFb+I2WpU300ynjmr7dhCZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657411012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6C2ipp4BN1lrinw8PqZXcwcqKASVr9cBOFV+NjaN86A=;
	b=YlpPUj1LoD0gZGgzumrYyf5NbuuzMNsJ95/0VL3nqZ27x0WX+KHXH9KlEzEqN/A9
	ibuakxk1AyE3xKypTtVLGzt+A0LaxC8y8v6HN/wkG0tNBHjB3XwVUmESSx8fJw8SHzv
	Rke9DD/r5nmiHSFyGJMAA+bXpP9zi1Cu/m0koUQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e56506f5-2e2040c9-84d6-432f-9874-ca8f6983246b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0e850b96550e75707690f7ca7f11eb6a2271a040892933bcc2148d0b095b3a9
Date: Sat, 9 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657411012
