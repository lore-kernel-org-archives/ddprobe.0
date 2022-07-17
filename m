Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92927A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658040412;
	h=To:Subject:From:Message-Id:Date;
	bh=RFHY1c/NhmwyLYCDpTIjO77Q7XeWN4A1QD4I2N06sSc=;
	b=VNWU1M5tMJ/7YOXNzYN+nikqZsar3imFah6kYdnkmWBdqddNPdzkI5owCQnE5ylT
	0eSMdA4pb9ZfBO4FIUZQR20oRKG+wsgrf2sjHWtOdAyxpMfR8aiPoWR6bkWUdi0ZoOp
	YjBBdzDz3h2LEVHIMh29cKuoB9AhEMKOw5w6Wc4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658040412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFHY1c/NhmwyLYCDpTIjO77Q7XeWN4A1QD4I2N06sSc=;
	b=jtNgAPzmmhodBBWl1cIYKjYrvygI1EA3f5quaFBOG7Br+GvG53mwJ29wNEYqP5Y3
	E7KeSmsVUHQuFkG9GloSj1/bfPWiKvu5eY/6w+i9tSmZ94OfLziHyxtXsAXFON8RRH2
	YMk8E8tZ4VYQdgrDNV3Ge+5GFJr7b9II586y395w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ae8e86b-d4371f87-b2d9-4f2c-a4cf-766d45c5ceb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21485c931fd4ce88748920659d37547074566ae41e5fdca279c7c48ad4d57d1a
Date: Sun, 17 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658040412
