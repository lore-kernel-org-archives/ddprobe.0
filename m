Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8C515A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658452612;
	h=To:Subject:From:Message-Id:Date;
	bh=xdjB1E7djWkb6qwA6FIRJIJ8hqH2sT1BjtKpAs9poFA=;
	b=OXkTeSUVlFQxrQUUDyvcMycUc+TDTpP5ijGYPHrqi6nwGrhvW44BKM/8cFIfzYEr
	f6L8Q9ykfoKF/JyMRhi288mtONHVJOXTg913hi4eX6ZWGmJ3tU9Hn4KvEoi/H4ew5Lv
	pglAme+MOp6mzSv9qX4x3Si16Qg+yzNDQ6faAGmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658452612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xdjB1E7djWkb6qwA6FIRJIJ8hqH2sT1BjtKpAs9poFA=;
	b=NR+4HKMGktA7XqujikwLJXaN8bzncILqrGsbiflXoAcD2LcP4mkbH4yNAf7V+LBK
	ZI2toCfLVc69heZ3c5do9X8UwGqvG9a/teMp1bDENiEjS34obW/goOtoHZHuingFMF1
	784C1pfYQycxkTG03WLC87qebzYjupsWSGwjg0Bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182237a94c7-1072241f-43f5-4c24-bb15-2e8210084721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 080aeefe5d2b79937786464733d894ac7a1dabba7c061320b422d16b185cf83d
Date: Fri, 22 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658452612
