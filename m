Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D826A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 09:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655630039;
	h=To:Subject:From:Message-Id:Date;
	bh=sgC8rOHQVPfmqzcq/m5/Ex1mkUhPtluW0NBFhnjyfzM=;
	b=BwgZ/Mshwl+M6mDP1YvnnQQ+x2diadYt0D07pxpi2rwG1KCs4ZE0WAB7Tcw0A/MJ
	D2sd3/EFq15kR/Z7r8N1tAio+HbfVblhfkBwrKOFoQj8ibnGFVEv6sxmVW6nfyRn4am
	Bos9yCbci7klhN7h/t1fz0jOoxEOHGk2ZGDIkKp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655630039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sgC8rOHQVPfmqzcq/m5/Ex1mkUhPtluW0NBFhnjyfzM=;
	b=Ejo7zPdqQyIW1SxKfpEfVm/FZEpH9MAlbe78gaMKojaLFy/04HmI9aO7XRJGfXte
	brPFlYruQr87fOgSg8Nh9GKUdRS2J1o0jvp1EjnrML8dBgGsdUqgcyXNmpX+NEb3QMv
	5Xy/dLuLrB/nwLSXOMFSEssDMCrgrtA+/o64pAWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b3d88ca-7925aae5-ee12-4e66-aece-9c018e167e58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f84d407c18921e675e51c6772d7e95552ea081b0ebc718cbc2e6e40792f4aa5
Date: Sun, 19 Jun 2022 09:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655630039
