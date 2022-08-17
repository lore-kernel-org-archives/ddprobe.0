Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6358C7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660699852;
	h=To:Subject:From:Message-Id:Date;
	bh=jrmqUHkB5y5x5mV9h4IIlYaHelhvmqg57w3TynJggXw=;
	b=GxZijokAhPVTkd1xEWA3YSrffjEthINjxUgh8BNXi8Tw5Yc5Ji7XVBo4HGisMqL/
	fwHQk//LZve+GSJTTMDHQ3KJp/H2JstvE5SazyXxtnrtIPP5zRqXtvcwOjWl6zBBzqF
	tuoV6gyXO+9VpQVZqop/qobz0lV/mBkT+aBD7+kU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660699852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrmqUHkB5y5x5mV9h4IIlYaHelhvmqg57w3TynJggXw=;
	b=W2f6URf25+lTNA+wN+RLUuf+MjWYNKeX8htulQko4bQSD8dXWrSAaG6mZMl7mBSM
	uRbyHQEo95O37lOfSO+7pDIaSgCi03XkvVU/z18ayTTah6ya1KX5Jug+5d7Denm+T2l
	BbXGL0Ngmxuh538jGAllO0Lg7t22Nco/kjB66z5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a96cbf49-7872b920-1aa5-429d-b881-fa4a63b98feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5b8898f2b842e695393da58a05f43eed020a78027ca25795fa568ac6c532327
Date: Wed, 17 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660699852
