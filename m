Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BD523BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659168052;
	h=To:Subject:From:Message-Id:Date;
	bh=R9xIaUofLiHirqGpDqFAmVm1MDOFCyDUmYcmBPOzVjU=;
	b=QKJeyiKVpNVWxHQcWyeHW0qrzhJ9utkhcUAU02HyQfIB+c28UW+rmADjV+KU3X1v
	ITbujzStbmGCJ/N3P2TwEyXbkn0AWeRe5bMgykf33b3PLH+XtO1ik+Tv4caSFqXNw8d
	fGSqOJUWuU/BOBVj4lTNb3u3ldgf21DN1rTVweoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659168052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R9xIaUofLiHirqGpDqFAmVm1MDOFCyDUmYcmBPOzVjU=;
	b=IwWzaFn/TCibu//tU6+EplNcBTXfQHS5EHpK/aRt55RbTUaPTxZ8rJDdLNQncvVa
	+jcf91y9avaUWrJvRDwlue6yns4zPYPtC7Zg0Kkbsv+WbDWwryDarWBdWvqJQOUngCK
	FzHVlfUUeKkGRWpsyKhRfqetoaJciXpOZSbLec8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e1f5577-636739e0-cdad-4dc6-94bb-098de5fcea77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a4a10d8b2223c03c3774d9092022963979761205770576906ae0a99e3969a0
Date: Sat, 30 Jul 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659168052
