Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186D56004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657819612;
	h=To:Subject:From:Message-Id:Date;
	bh=jOYsuaYoQUv8u4/FE1XqvYvWRbaL3rXaZALVu70i/JE=;
	b=Hy5ih0hV1ru0tM6sesVBV0uzg5+GvTJ3aic0qcfBymMjqzkY3shnN2ZwvIDIUb/K
	IJ1Fglmv4PnmSUTx8psg3MyaYw6EVA0b8dacBNvBxEwRr0sGnrSeqHi8L9fu9Af2KCC
	l9+UOgqV+wtfvnF65yhPRIZfuBzLQEooFSDEE398=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657819612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jOYsuaYoQUv8u4/FE1XqvYvWRbaL3rXaZALVu70i/JE=;
	b=fc4a7LZnJPKOdEkDFMApOT6KywfXjojSQHLHoH2tKJqh/c7uwcaeA1K1KXRXNAEY
	v2VexIa1WyWOZd6MngRhXyang26wsJKKxe0/uD2nbvsSvF9mEGTPOLHNyJCajcwlubR
	66jwgiJdoJs1FNaSiyX5ueMZJNOXQf3hFmbUFyB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdbfc475-8a7feb4a-ef3d-4017-b990-eaaae0e016bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7abdfcd8cda54ce95e179179766bcf4561b002f274377f200d665a2f417bf52d
Date: Thu, 14 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657819612
