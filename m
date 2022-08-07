Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8B1C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659847852;
	h=To:Subject:From:Message-Id:Date;
	bh=7te7h0UYK4sev00c/xB7sRhHHOKfzzxRuKBwqS5xCQE=;
	b=AMbMCbfrZ1eGIWhuh8fS5mPpwZeeJc4dOSubT0owk/qgEiX3KRWWHBaYiHTD2fE8
	B7LaepKzK//Vt9SiM+P3pszkGNZ3tOvPPDjC2TqS/2xhNQAtvvXjQX+P07P+G2too2U
	pC76H7a4kUPT//ZAVSD9/KF/aG70XenIMtkcVUCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659847852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7te7h0UYK4sev00c/xB7sRhHHOKfzzxRuKBwqS5xCQE=;
	b=ivNQrjd/6LSyXkKZCRVoDKKmZ13YT+ELXNBoO23msSz++SfRjUmGSkjAWGhJg6E7
	XmuZ0O3NW9Qi8BSoVUqVWbUuG1QAKs8Ug5IxgTLf3ypv2x/uFwld839U02bzvNkv+iA
	JhtuPrFGdqIdbOQgg30zjZCKIOeK50DTDTjGZia8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276a44228-fa147050-0897-4389-b412-cb4e2279542b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25c1fd01aac930d9ea8d5048ad0336965f76b5f781e7b8b89936fe0df834bf4d
Date: Sun, 7 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659847852
