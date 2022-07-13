Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E6E15AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657684012;
	h=To:Subject:From:Message-Id:Date;
	bh=1qJxJ3Nk2cZ6vTGvVTKeE7cEi7thG9Xu/NaH+OHY1aU=;
	b=THteXYKcDkEBt4RzqMK+DnrUrBh518VFCCHO8+7E4vpViFAgQw9FWeN0RpsI9kmO
	+qiinR1k7wjloX/jOID0h5VLZk3r3K6fLx62fmDM4FPaUQm7uCYAwSAiHL0w1/92Oj+
	xMHkykbMqOqQshj3bM+/hOXymqbKOfpPnfxt9ij0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657684012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1qJxJ3Nk2cZ6vTGvVTKeE7cEi7thG9Xu/NaH+OHY1aU=;
	b=MJ6HaUaXLB2IeWI5i/ynbgTXcfR4f4VRvEyw2rdlXiKifDCF1pQwHI2gIys2uEYO
	unDmLZTBZv6I2gSydCy+/whl6FKpagfCEzr6Ij30wgj14uy9rmuIqDCXryshyqjyjoz
	OVDIuvQkHknDuI6jB6BCAR9eYRYimnwCsoLh/SuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5aaacd1-1baceb38-1807-493d-b978-6041c3beab56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be1eb7d15a22af405f882c2be20085072578da06149db45fa8170207421489ff
Date: Wed, 13 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657684012
