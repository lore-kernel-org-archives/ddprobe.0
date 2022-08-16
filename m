Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E621FBC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660632652;
	h=To:Subject:From:Message-Id:Date;
	bh=Lk0m0nC9qpVj6xg0wmhadeUeqGnoAXvC6tsq1SFouTc=;
	b=hdq2x8JALRIDwGk8m8SG1YNSKMXB9BFqJb8noAc3yYFLRI/iUjZmOekBoF6oJXqs
	db0TWdNRnnmvmVi22rj4Q03ECUddRBJpzA9ErdBcHiYlSV00Gk6gSAD3OKh2bvQHa7Y
	ye2/tEzAnj7m8SPj9JUqxn0Onkn59MAy08yyYl1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660632652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lk0m0nC9qpVj6xg0wmhadeUeqGnoAXvC6tsq1SFouTc=;
	b=hggBGJIdsEpEP28HBPIQRwlslnAQneqI3I3hIGupbRsaBMsVMPCh7fGeZp3os1Ay
	mgqv1QLTkoTlcO1zWWxV522TEJnIPU4GNpakqZZGKUfEcSe8oyxvzHY0iMxOO4SQ/4b
	VN2UclnxM6fdjeVIvVKH4UsN2LFn9KeyvmEl7pc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a56b5b2d-1bad43e5-a861-4de3-a413-94e561bdfcd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3707aa937528b2c2f416ad9d99df4d150cfebd1c5eb65e9ad0039b3cd4e57d18
Date: Tue, 16 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660632652
