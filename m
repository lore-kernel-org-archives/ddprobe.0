Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6C3163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647705684;
	h=To:Subject:From:Message-Id:Date;
	bh=BSt2G6hKpANxt144L2Jxi/AMIqCRuyq2rL4/vMXYvhA=;
	b=dccigbG6lY/J3owqxEcn9+Xq/1JwHPaGsDdurvDEHLi6ZwcZsbDCAm/7+YCuY3lK
	HfJcIzZvVeTelvCtz4GtMD6e0L8ZttOjvWa4ngOOVBoxmfzYD0ZdGBgiI8PpltSF/Z/
	zvnKxjGZaETEWUOkGPBamrP8N33Asj2KfjG9YPAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647705684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BSt2G6hKpANxt144L2Jxi/AMIqCRuyq2rL4/vMXYvhA=;
	b=g+h8ID1ca0/gPqlGoICE4DVxbAGgR0hA1GN0RJYzh4F3Ongv9u4NZqlhE18X3nPP
	nAQ9DGyqua53VhELN66Gu3qhn/Hehbv3bc6SkKT0DESh9ff/gWymveA/BLUoySLP/7U
	O4uZ87QDiCTtbE09KEEtOfzQ/pw5mJc/gPfJ++4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2e97b0c-856db9ca-131e-40f1-9fb1-4f6924d0c614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a149ef7102f19872996336f5d6a242ebe5bea93cc41dcd58bdefcaaa9b352f2e
Date: Sat, 19 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647705684
