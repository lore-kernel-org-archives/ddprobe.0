Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E0C7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657002412;
	h=To:Subject:From:Message-Id:Date;
	bh=FhQzAwE5a3liDnv5I8qjK/Z5x6XdI2mG25Kl1/uQZIA=;
	b=XQ6+5o5gYhERRBeFAC6Z8WpkZp8qbXbNch8tNi1a3ZkEfjsM0rYNJ/d1w4fSHSp/
	wJYH8493jkrLXuqYFOYvPX82T2U1XtROT1XmvZV/k7WJ1lofumjrF5YQvBCDdGhH9is
	2D+9e6VLBU8UJdZu9w5yrmzUSUohzQtrwzeAUSbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657002412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FhQzAwE5a3liDnv5I8qjK/Z5x6XdI2mG25Kl1/uQZIA=;
	b=XAL6+pRVAS6dJ8TkRBBXrzaGk73UDkxuVO9cN8RdpR8LZY3y+PekMCD2UoBqLW7S
	r0g8UbAb1w3sd2fq48deDFT7LPe/h4K8eEU2Pw/SGZefWSOupgmxASPVOsxfCPUEFiN
	MPyRFZiDf6+V1iCiBipah5RfXaabIYwx8w3oDBDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd0a48df-d7e83402-c9e7-47f5-ac7a-4ec9a47ac9f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c40a6152be3a44f6570e8252f64d42eeb3a2e55f573b6b3deb67b7819c803c04
Date: Tue, 5 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657002412
