Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9871FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656844012;
	h=To:Subject:From:Message-Id:Date;
	bh=D6PKGo78HKHhlZFN7O1t8disPmRm48xuQ/vPn703Ivc=;
	b=gJEYjI/2xIP2utT6qXInWBnwKo0hrJv8DLbKTLljLU6TrMRtQLks5cZkHXcQlZCW
	16VFppaXxnFtWGaSTe/jSdSuf/zsaCcEYUjmus8dcGOtUSjtMZI5RgQutnAuVRcpdDq
	u939ibxPC/6BGmYwmRW3hmrYFUVEGYsYyHcQFQX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656844012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D6PKGo78HKHhlZFN7O1t8disPmRm48xuQ/vPn703Ivc=;
	b=afSDcdiDpb5tEOPehcuQhlxwXM2lzzNq3XwRIhY0duVwVk7U65ubGvHS3K7QMddq
	1cc2uP3s90rBTn9K1FGXKcXp5y31X6I2LhTEYFdOWAe7KEV4iUgbvGfBwBtoNJ/uf6e
	ZBKN4fsPHrzppepbASQyRfhQAVhWTzzw24Aoy2WU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3994b27-6cd2f864-a287-4712-a6e8-9faaa3d4e504-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf5d3cc7c45c687b84279744f3c3b5c99bcf7c980ad1d29303bfc444e2b17d97
Date: Sun, 3 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656844012
