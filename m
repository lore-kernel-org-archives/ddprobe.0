Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936597F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659604252;
	h=To:Subject:From:Message-Id:Date;
	bh=0jYYfhs6cWgCrVmVhVwRmJhhjYNY4Eyk6DZOiD9Ai9w=;
	b=Tm7Cdb1gTzOrADDsKqeTjEbSzJgXZDgxYGZx9cL0HVmqBgUd0Wej6u990xdr0cz+
	67babg9KTGg6Ho30PZKBX4u2v2iXOvTJ9GBNsz4ib7dsIHUhXupmalNVPbd1fos/McG
	DEPSQvDssna1FSHythUjs18i7l3c1PNrkmCkLgKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659604252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0jYYfhs6cWgCrVmVhVwRmJhhjYNY4Eyk6DZOiD9Ai9w=;
	b=XJvKcP2oBurMmz23XdpW4vI+RZw9lr5U2lSWGUx/mmaWGtz7r3XxpSIYR5ERTg5z
	VAlaTwTvsPtI/5tsT2dsLmrjWWLvWjFzG2U6gU/wfspapu0zwDLFWNd6Fv0rw1iOnFk
	NyMyTgapKeQAt9FF9/O8qDC2McHAVo2phV4XNlwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182681f378a-4bf5bc62-cc88-4bc9-8357-db9233707101-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7b31f957b1f940c1a3e2a1747ff664e94f8684c8acbbc0f46f49d1beb09f216
Date: Thu, 4 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659604252
