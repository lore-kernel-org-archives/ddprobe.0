Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6301C32
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660627853;
	h=To:Subject:From:Message-Id:Date;
	bh=+n53pVpSO+lJScksTyVT/z1xiBBpFwtmsGxb69f/SwA=;
	b=FatJcatIi/qvFNx9DIOCwtQdRuOyMJrVdFGeLb+aRkp+fQ3wqPmQdwNAQ6Vdzucs
	BUi7vDqdN3ZYR3Tb8QPpEUfUZmgXLgg95ncX6Wc6xxuccTf0e1fBgqxljp0DVU9gS2L
	I67jNoGrZb9TG2ljAylni5dPBRVtgZtOBytoC6eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660627853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+n53pVpSO+lJScksTyVT/z1xiBBpFwtmsGxb69f/SwA=;
	b=LaLDkD1Rgc4qFMapaZGJE73du5xo14khiLCTgGI4rAYNmIPTqZ//MLS3LVDhMsvS
	FXy2EPq55hRHdAZXZRIUM/lGb3pcVp84m+E5dFZW/9s0M55gERhUqFeAwZ6w+2Sy+A5
	vXuQdaThtIVu7kBLFNRz1lM8c21URnwRCY+6I8ks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5221d07-5ac22fc0-1d9c-4449-9714-78c11604edd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c231f8a66db61b683d3df6c7fe9a18fa2940526fdc6ced1445d7fcce1bf57812
Date: Tue, 16 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660627852
