Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BD07F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659348652;
	h=To:Subject:From:Message-Id:Date;
	bh=YwILDKF1kNjD976vZSpQPbJ66niCw3eFvS9Pdh/dfjE=;
	b=eVs04LZsxtYRL99eTo8UMQezdlv/T0czDVf8xwQrzK3KDHe1uogSAvdcbVOBlXJb
	spJx6ozaQ85aVPYldv3dsrSkdp2nVi4zWIODJfYdFSgV5kWC3O/wsbGVngTKZ6l1Ls8
	Cxru7oMtJatiQ0fvgM230rGYv2xkOywne6Lt6jf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659348652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YwILDKF1kNjD976vZSpQPbJ66niCw3eFvS9Pdh/dfjE=;
	b=Yl0AfnMT29YMYEfVekB7nUQOBb6Yw9FvNdTW8kVe2Y133RQbCO0a0DIBxy/CCMo2
	prbWGecnpo6OjYIdoySA6M8c+cy5oMIjsOD8MOWNJKRIMsozUQvWcqZ4/I0FtB3egwD
	B6ZDGTu8yrTQoUBEnXSv/qLXIdnjTNPNbOKY0ywc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258e31242-af5ff093-e17d-4dd2-93e0-43a6f54222a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8afc545b7acdcfd8c33ff2b8bdb9d6902e3b5eace2fb9e4183edb563a98f9385
Date: Mon, 1 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659348652
