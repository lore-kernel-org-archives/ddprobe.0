Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572EE7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660966252;
	h=To:Subject:From:Message-Id:Date;
	bh=D6dvcHVSooG+wKabZgiOMkwjTadOGSBKSd0b1e9z6So=;
	b=jlHqAPpUizeRopg21jBCFRL2oI7X3UcpyoZxlJ4SYqB5Qs4Pf4+q0oU3jZlpd0wo
	R33Mj9LjQyW5A1cKLSKWv3CQfFSGN9xp9RiKas9hWT5BVUuedPQ+xJsRa4GIK6XWyYt
	v/sfq5MIkMXAb2Q/fLu582XiO3ZADAgm8IBOJ9t0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660966252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D6dvcHVSooG+wKabZgiOMkwjTadOGSBKSd0b1e9z6So=;
	b=V9m56fbR9fwH9Yh5MYK6B+/UVEBmM00Q9xqoa9YUhJlm8m0eHPUJkVdng4XxeIOU
	T4nafi275r9GjzGvEuvCw5BoNhn6cQXtwi+lz0GPvY+g07F1qmioiH0/mb2Pm3UBSaj
	tWp9KwSTqZqLzqiwPH4isr4hmjkZQz2oye5PGtyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b94db001-fe21c803-a716-4f90-a7df-89fe22da1232-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4de339de7d09d7a2bdf3df8f9384d6dd4af07e166f614a2a7e09285e113f00a1
Date: Sat, 20 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660966252
