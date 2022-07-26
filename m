Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDC4290D
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658850052;
	h=To:Subject:From:Message-Id:Date;
	bh=Pbihc4YZj81ryGCf9ok5Xplovdmm1EW7Jys6N4LgdcM=;
	b=WbBRYV7BpUXqC9T1+OBxbD/WXSMCTzbVYJyFl4HMsXBIC/k+miX+7akheQfhf1eR
	EvkcdppDUnxAC7dE84ocwxQwn78o9adPEQbNv30ZADd9aZNgt167LP+eIoYbGViDkEk
	DWDc64LNd4i9ayanPtSm1I+HoOZSCLB5m3cTpupA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658850052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pbihc4YZj81ryGCf9ok5Xplovdmm1EW7Jys6N4LgdcM=;
	b=P35wrIp5RowCbSzhHbdqSAP6/FMPcC8ReKgn/pxIozd2xPLVfvDvfpAP/zexdz9l
	4mDEKPzgDpkndXJVKZbzgPtAr6EY2hM3tMx+rjI1VJXRfMudvWES06UvteM1V3nObUu
	R3gZXrjnoz+cnMLo8LMKh1AB9Oc425Cs2Sq9v3Xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b2b09ea-c3241dd3-c279-442b-8dc0-885fa973638f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 226620114e6890433b9b015941b1ad1ea72398a367768e00fcf6367b9407f5aa
Date: Tue, 26 Jul 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658850052
