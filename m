Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8927D3C1C
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660039252;
	h=To:Subject:From:Message-Id:Date;
	bh=82a4lPlfoYrMpk7ccq2NBhUJOadAUb964TpdCZT7k7A=;
	b=Bv/bbNHuGVsMVAUdX3QYH+tP+OSMK3b8bzmIvqzlBcwd+g9AzKBV94jdDKxuSi5V
	iqoC/MK0y9DZv35LpMwZeAxbeLXHSmQJM/suEVDtiPy4Ch84na+QCGWiOTJURv1tSBt
	otkxkJHIgTngnv9cMu03gGQR+It7TXsxwc14rZfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660039252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=82a4lPlfoYrMpk7ccq2NBhUJOadAUb964TpdCZT7k7A=;
	b=VNR5Gj+MPGuaW6bpNYipxXIGMrxbcTtKeHFj9hgQyaVdVMwhp9grcdozPkaEkwZE
	3iUkl73PCuGO0IJ89E2f7vBEehgZYTBdMJlJ/sDtNVLxo0XJdQA27UWnkR3Gj5jglfq
	DoHOSv3YDpg6pyemWN5e1PzYFfMcyKYGR0vMosxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182820cca76-2844f6bb-3673-49d1-b79f-896085b82285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fb584fa399b6d224915c8089cfd82bb1bb80d0da138c931d58876ffeac4a208
Date: Tue, 9 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660039252
