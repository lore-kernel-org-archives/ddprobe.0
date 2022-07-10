Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC687B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657429612;
	h=To:Subject:From:Message-Id:Date;
	bh=c7ROgGdYMTslucAyNeiDTIi1RIz1xCjeLXHkBrp95N0=;
	b=R+5lI/nKcCSzLwDGSCwzgVfIIrQ+5M5CKK98bhENw8kJkMmWRzNOAl2s5kvW4KVF
	9INYfAMRR/g78zZfdHJVJtFRORMCUcLwCkBJAI2OlahfzEaXbmbSsD1GKkH+jkex3kf
	IXTuUoNcK1wZQ9iLpscKOp6i6viiLHqKlkHIOOvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657429612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7ROgGdYMTslucAyNeiDTIi1RIz1xCjeLXHkBrp95N0=;
	b=NikV8BKrj9abqdlLcOJIaesULFlTOa+7AQS+FJ8DTNp5u7/j2eaHNv+X1r6gAGjH
	zGDThdTScysiu9FIs0BMe9PBRpYr6/KjyYeo+V1GXjAGHipC3lZ1/Pb5HfaZOUnp2Ti
	VLf47VCBBLT4MJmrlNFSPgBqrWvRRl9xK/SPKi1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e680d71b-77669e1e-bcde-4b61-b551-d7da5d62c198-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d7f6ee8d2fff942bed24e94b078e2f49ce7b8c59384eb0acb4440de7d6d8dfd
Date: Sun, 10 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657429612
