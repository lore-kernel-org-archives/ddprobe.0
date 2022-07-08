Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F84817
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657285612;
	h=To:Subject:From:Message-Id:Date;
	bh=x+QVUjZkomh4XIt91JVCaLsQXhv1268MxUqzwRNqy58=;
	b=CghJRlalX2XY0QAJhO6gy3AFVSN3TVnRrtAgvvGVdoJ0pY5xf5u0028OGRjv/19M
	K/9RdHmk0saSWzh4EoyU7RiBUQkabub7HZ3vodezRUjhvrhd3Xa3VDyp7V+gfWi7Dmm
	4rpuwww6yjPzJTop32JN9nbV2hGALVMiAHxkAsVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657285612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+QVUjZkomh4XIt91JVCaLsQXhv1268MxUqzwRNqy58=;
	b=i34CycRfiqGLTrYSE3AO2B+nXjap3ImS1Ei//3MvoVcBfa4a3IqHxTA/lA8HdsGc
	OGaqljYytzF7Gi6bRY5d0CQgfqeC6A/ZR2Lkhogi2sFL6zkTrVs3I6UWeM0JkMva9VW
	TKJXSe388qLWqwRV7DgUJWekIiCGN7fH1Q1Rrec0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddeb9311-349df3ac-6630-4776-a7d8-60e7e81bd8cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eede865ae388851741ccca128910cceed425efebe650793dfe60a6ec1250251
Date: Fri, 8 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657285612
