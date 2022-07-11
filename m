Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257F21841
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657502212;
	h=To:Subject:From:Message-Id:Date;
	bh=pDiheTwivwyXAFS6+BqA/x+p3GwKNQCvtI4kk6MYy/c=;
	b=IXOT5VbTGzSjs1kF2aIEEfX3SRI2I/hxLtXCp1F8lGszE4UdP6ABwExVbYiiqdwV
	82iQdWACUSc9pRGkhNSbG05Gln4PGraRrUgoJkgxG74ZENPOVnrUu/AOp8OUH5Q0dTn
	FhQMKp7+RI/W2B1vjldAtuoaXa0w3+Zit9CheHs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657502212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pDiheTwivwyXAFS6+BqA/x+p3GwKNQCvtI4kk6MYy/c=;
	b=NpLe0LRpONJTKhMZCZElxf+vfhKEsU1aJ66OdOMrfIEjhHcVfKxEQfWjWnezBuMT
	hFWykQL6DJZfPslu6wiTPRvMtiWrqktoHfIIMg1FWHYGelo2u73wylCZsTg/w+tcz+0
	XuBXyLNU86twTnjnjwVhFgAZksJRP79v/m6u7cfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ead4a118-d5bb66da-decd-4a94-bf5b-d9ebb7957d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fc37247d3e89b6dc47e2ecdcd2e36946f65d68a0491e6c44e61eedba33e5df8
Date: Mon, 11 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657502212
