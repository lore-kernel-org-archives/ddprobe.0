Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F437A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652537580;
	h=To:Subject:From:Message-Id:Date;
	bh=/dARaOp45xxabCIEVeMgZLfBxU6Yq8+tN57XWLrfFHM=;
	b=X5MhwV5Q5/HNUGfAuGsEQOI/rtYNMOfDh5R0JAO4VVRzm14nmK0Wtfq5Y1Socbln
	5YE02e+9zrlhXr0cEbxpg3sKEcW2idE9+emeTb7dyk6SiGE6wuCYDowj52Xz8m13avx
	eIe1bzc5rNgPoTXKNpUD+L7WLeFshA/Otbr0Tado=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652537580;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/dARaOp45xxabCIEVeMgZLfBxU6Yq8+tN57XWLrfFHM=;
	b=Bqo9SUCSG0IhwFcamsywoefmXpLlkTjlZQ9L5DtN0L0eoEE7lMWwNBsfgRK103rO
	YGgWxwYCx4SOD337cVnQG199pzyDNqloGNkwfjh59xF8kdx/w4Q55DmAxWQ+NkSyYPe
	aG7xAwHymXflO+WE2nmAklYM4BgrLASzuKG5wO+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2ea571f-87ba3d67-ba89-4cad-b8c9-fe201f78d8b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc7d65b77cbd6df45faa3bc30889a67a42af1b1e0a453fca7da058bc7673eb58
Date: Sat, 14 May 2022 14:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652537579
