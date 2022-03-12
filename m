Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426E96134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647112884;
	h=To:Subject:From:Message-Id:Date;
	bh=GxB8Mb7HonbMVZm3gt7SN7dBNpuBYVhhSA1240KuO9o=;
	b=N4+4f7nKwG5MENxKWTIV0bC1in54bYI411byhi3jpE+bvWjkWU4/g7kus+llT+uA
	tBqFMttnKt182FpASoaOV0vlfECDMUMikdyse3f1L095rE1nCAtkeGxYkriS7ze3oca
	b1EYTC+ZOAnw5yHPThY24Jy5eHJLruDe9S8nNBCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647112884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GxB8Mb7HonbMVZm3gt7SN7dBNpuBYVhhSA1240KuO9o=;
	b=CswKOVWCPadVnAcGSOHc9cX9PFew4bHgpO7fkhW20p8grEKLC00jeDtAfQHOghUV
	GqYN0qDYxNhE1hNFkZpRbFtGOv8X7HIcMxeOWoT4769B/83UVyif0xE7PjpTYl3pdJi
	ApHwjRO4TO0SPKT9p3f2UdPUUWCElJy+S48zZ49U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f9411db-23593a60-dc59-468b-a51d-d2ea9a45560b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7b9a0f0f071c99197bd189b52db314ada91a9012af54f4d68569a1f0dbf8def
Date: Sat, 12 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647112884
