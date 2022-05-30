Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AF618D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 15:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653924719;
	h=To:Subject:From:Message-Id:Date;
	bh=tnaoqFeuQYXLooenVfYRzaXeXt0tdIDJITkvCocKBaw=;
	b=gEYvD/sVoUSbH2yqwdqfz8DKgcdmTKmEheDoXanlY7b4Y8/UvXFe6heE/NqyOUqL
	3raXjtp3sheI1UHNc9Y3yGcUbZ9uVgNxRL45K0nZupTWcARzDnK8KX/oqBf2XHqeuep
	VB8fFPvvMUtFE5iteMVQIpo79ydt8T3W8o3Uo5NI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653924719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnaoqFeuQYXLooenVfYRzaXeXt0tdIDJITkvCocKBaw=;
	b=fhVAs57ZjbXhODiNmFyc5pazVZMe/z9KsDAJLJwNTd/uPJkSNoptYdSeoNkhxn1m
	nxoPxqkdqL8jETE0uDDm0mxmivbErCTneJ0Xie9Dqf60UpmmEHTUQwQh8RkW4aZ5dA3
	vRpoCr7fyQ8ETUdzAW2uYTgqeHkvSyJ1JmsE+RLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115986ab0-06a19096-a314-437a-a035-6229fc32f61d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16a1028b8fe84a08517c6fd2701b63b15cba99f5a4827edc6ef6482084d70086
Date: Mon, 30 May 2022 15:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653924719
