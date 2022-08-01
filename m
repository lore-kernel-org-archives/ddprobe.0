Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B68C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659346852;
	h=To:Subject:From:Message-Id:Date;
	bh=GYcoV37UogFdy2C6q52Le+JEKzcz7x2nraVZYDdG1yw=;
	b=EAM/puV962pZEdzt0kGjP+NGClq4SXE5guPPwGkkh3Y5aUutCWufn6Lt4U50izDJ
	+ROAeb93UuwHsnf8RFROeslSUK1CYYkJjKmI/aG1nPnrtyAckiL9AQi6N8jN8ASURA6
	avNYxmgb/BPyhF1QQxuhEVSuMs3qP8nds+A4QWrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659346852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GYcoV37UogFdy2C6q52Le+JEKzcz7x2nraVZYDdG1yw=;
	b=SurE7iDhr1+22at+yAzGMMXtrZZHCooGZFLM0vmMWo6S7179sQDi8Kc1xiaJ3WfB
	5RX9f1Ivo4E4HSaiKjO4YRwh/mD2pclQqCKVRdQMTmz1RvbfKxd07tPY6OhKRIbrJJy
	k/Iwzj36U6I1cnACxBi99M7pNyUdqXzqaoZH38HY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258c79aef-b43e2e0e-05fd-4946-8c2a-56c2327d8469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d1eaed33770fe6bf10a28e5256e50c8cb1368517b53f08dc0621507f818a34
Date: Mon, 1 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659346852
