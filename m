Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259173C26
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658329012;
	h=To:Subject:From:Message-Id:Date;
	bh=Huimqd4xEQxuZorYUCoxBM8tN2kG+7r8jvdUvnSwYBY=;
	b=EduhqdzK3n4LPf+OdwLd1d6JD3qG8OmxdxAW2+0pdYBpSKVD9ONm4JjlGNosvhyW
	27us+BNjTSr17CzmoKDhA+rlJZ7el5cMtpbn0qDY1grL7pJyQsA8lUxfhs6KdBT0+OP
	JznlYkrZEP2IW694hp93+RwfiZbYCNfgGsdGSITA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658329012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Huimqd4xEQxuZorYUCoxBM8tN2kG+7r8jvdUvnSwYBY=;
	b=VMY7/aaeoWwBgmInQuZBtT9wwvsU3v2Wg8CcgmVg6cuTt7SSTq8ivbQaluvLn6Zb
	ZfpNh9Z1bZWqXUg7UwfFSSg4+cPFcY3+wvVVWg4/Ilm7lZiQNh5HYx0ykB4+jAjpr/P
	bJ5YOcLcSPNcYZnVizFsu2Oa6aRzfJ+mZyzaFwYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c1c9816-f204e038-2dbf-4068-a1a1-07055bf75514-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 105691645bcce036652c673c0f960845f0068398c30f5332f70784b1af848bde
Date: Wed, 20 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658329012
