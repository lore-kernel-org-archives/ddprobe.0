Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C041396
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655132699;
	h=To:Subject:From:Message-Id:Date;
	bh=N+QPh9tX+P885SKS+zCUzl6G6p10P3dKVHrRXzl3B8E=;
	b=iftIa7m9nQubyiM6bjXG59kbiXnTY7FMe69iE7WtRzziFOgPtpxBEddF2SY29q4T
	1eI1Fv3R99RO5+i+Cko3hymCmQCKSTFV3VKv+esSnAhuKn5PQYnV1B9L+L2aZ977Pyi
	I4DLlZYIb9RXNp8AEHE1Ip1NFMLIxLYo+ddLHl8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655132699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+QPh9tX+P885SKS+zCUzl6G6p10P3dKVHrRXzl3B8E=;
	b=gM4P2G2cxNhncnWDRHnhWjMeb+KWnKQJuY2p7pzRlQ+cUnPJswlKM8eSZKGP9Kj7
	QlfULMSncs63dipDe9o8//tub+UE9QUHDyJ8tE9Ei1h7sUZGBDsr5SVVaQV2xW7XkCd
	iGClebWbP03hzGidIRfozSMjhKfphFAtER/IMjW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d98bae3-f123a197-dede-47c9-a70c-82133c7ecc18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0db2520b203b1cec937f286e82630278af31b05d76d16b5afe3193c06607ae13
Date: Mon, 13 Jun 2022 15:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655132699
