Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5313C7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 12:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653049979;
	h=To:Subject:From:Message-Id:Date;
	bh=gFcxYGdNsQWlLDUn/UGr3EGVD2bWfstNth6R6m0t+7M=;
	b=eJsiOMM5VXgaMlxruPsFphRT9H6R8ePlR682UpjB1xHKnWFCcr36Vn3ClUvx6qrK
	vo2c67tqw2DbFT0DHbowJAbKuFHMuifAaw/zF8NsG8aPr3FIcuw5OAiXImz4Yo8FHBy
	W6AEnDkmOKlqGZqfmbqG8EnWmKUyP0T3V6tAzbFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653049979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gFcxYGdNsQWlLDUn/UGr3EGVD2bWfstNth6R6m0t+7M=;
	b=iSuwA7QU6mhkiemjvJIH3pw0pyywu4Wgh4SwOoummozDPY5tuABT7WXtFuCgSile
	LZew8CB/MC8mhgyo3aGVsGUtPDBYiVpRBZ+redh0g1KM9BVwT/bypeYmO3YkIR6UfqK
	Z3CprrKGjBo6bAmJvwu59DjCDhIbZLYRmMCJ2GIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e174f198-8b26696b-b738-4dbc-9db4-9bf2623da84f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4095446b51fa93a254515d1b15dfb07f6610bca29703ef0b1e3e5bf419797cde
Date: Fri, 20 May 2022 12:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653049979
