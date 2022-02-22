Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAA27B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645492885;
	h=To:Subject:From:Message-Id:Date;
	bh=GgmeZM4nFf2zZNNZ595QTrZd1XNwBwMjPWdDQ162Bac=;
	b=SrxNy+JXlAHH4n74IjgwYmJ5fo+vv1JjPE8H5LgQKmRFWs9/PZZFfWFEsQCGzwRv
	RduAZQvQtVHMTuEkSrN5mE/xLj5ZtqfDWPoQRR0fij/oz/bnnm/JryTu4h46EBblYLK
	duzeM4MkmRYZWQ+/VzagvwZsIdW8CYgagjQJjzmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645492885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GgmeZM4nFf2zZNNZ595QTrZd1XNwBwMjPWdDQ162Bac=;
	b=XJWi6a9KDCRAqVt1I/c8NDcIgnQEAoJkmrO8yA605BriXCDVbXWYpmr/OBwzANAJ
	i4UMYsjlf6bBej+/guQeU4q1e3ZIAuxa+1bY7BMcAbhURKSyVUqPBC0Bi0JHpmLj7BY
	6e4E24tjxor0ape+Ys/lihBvs5/T+pM2MPRUJdMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f04d539-2fbcdde8-80f5-4f84-af4d-a6539f3ee0e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c197770e3bb15fd304ff4d367b93cb8fca5c2cbdb282150965c09bbc2627133
Date: Tue, 22 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645492884
