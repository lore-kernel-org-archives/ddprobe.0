Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C51A1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661366453;
	h=To:Subject:From:Message-Id:Date;
	bh=g3ATTXrOBnjVDDqQxw6dum3ISNR9AjftjcNrOI5Dcgs=;
	b=b10KPK3Fkl1h109UMHPchRE8nul7zbvYPtrilop7G/Emn1Gbbn5FycASid6ns6Lk
	igto/H107t7cDAm057hQOHuFF/uNfFFPUAfbdWn5ObviLpJgak4Ik9uTKCyQvsB2Lh1
	hJlEe+AE5op2xbFUhAS/g8Y0gNSijcg3akVSQkdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661366453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3ATTXrOBnjVDDqQxw6dum3ISNR9AjftjcNrOI5Dcgs=;
	b=KhJ+W1yybGZUZKSNfoJg3/U6zFv2AAA635+YxqfbddypxQF0/yW1UqJIroqSPavm
	ZMJ4w3IorFbAgPn6mVgl7cDIDTrHAiIo8IAIfUKB1H9UK1eEFb+Gkgg+4qoDOqyzwWf
	K9DInVt5A6yz0ltvXZgom3U5pDAf+bUcAs0gjyDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d128416a-1e88ba5a-6db5-4a76-8006-88c9d069a8e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7225f392737395c9fa862326f4c00c29ede3e3204b3b13e0cf670d3b190cf645
Date: Wed, 24 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661366452
