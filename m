Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096A710EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 01:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653527579;
	h=To:Subject:From:Message-Id:Date;
	bh=mqSGEAFgfvjJ+cqVwVKH3OciO9DOBLMruXT3yXa0ET4=;
	b=GmuC5E+RnkJZHC52oToAaAzLBy0hKM6H7yDJxADQP/hJCfn3ZFaqJ0Mv3hJTAuqa
	D6xdeia70IJ3IzuXObcpD4geMf8Dcclz+l3VsK6+I7gEe5dk9LXxQ09b07E3lNp2KGH
	ye73m+6mSpNhiMknAYWNE5LxgbIzXBHFqKX+UJpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653527579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mqSGEAFgfvjJ+cqVwVKH3OciO9DOBLMruXT3yXa0ET4=;
	b=bwkLk78vH+BhohvCfK+mZ3O5RK0EmBWVHoa2lcQB0IThy/N3n6bDXwL6+TWcxmzg
	pEDaF8d+F+D7GcKtfkXwfcZ3h9LBgSdkAlBKZaakMjSXHezGh96t3dbd1GWZtPQMpyj
	SwqXrQPQ5YCwk08BmZDon9gThqAcG/biRdnSYQB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fdec8a75-96551768-68df-4812-b696-688fc04fcdbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdee3bb6f2fcd86a6e050c9f85818eb1d5e532c8570bcbb44fccfa46c2ba99c2
Date: Thu, 26 May 2022 01:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653527579
