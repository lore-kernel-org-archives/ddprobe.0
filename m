Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2509723AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648200778;
	h=To:Subject:From:Message-Id:Date;
	bh=BZg3/jN0D/M5syp5tDH4CU2AwnJM5VaeB8eiYR+/DRE=;
	b=QdPUjTBH1vBksBE8HOwcBY7HtUq7XEvxbVR23nZD6EV9v1HuBUk8IDxOY46Sl6D3
	+gY8WYMPnJhUGVFa4UdIEOG+PeN8wVgXq8BnoFZZzMjC8nlllzbyj/PnPhzvxNuCGQg
	gRocnCoJnmYxdhYlu1g5Qcg+rFFWv42XPGcUyTvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648200778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BZg3/jN0D/M5syp5tDH4CU2AwnJM5VaeB8eiYR+/DRE=;
	b=IQUxLUT4Zy1h6w53f/HoYSWmJpNZZRp1k2sK/8P8DaVaEX0bta9C/a4hcXSPQb4B
	DKXqWfAyEQ0awfLL4wsbsayODmHVbxws5o5THGVN+LNSRmjyz+ZrXacMutnBtXH/cuw
	TukfblAOewpRI+LzW8xoAuzvmUdh8LcAKvEO89EE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc06c024f-b6da974f-cc6b-4607-9ce0-14814e4024eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8063a863d64a9a96fd3ecdc0d5eb75869dbe2126da00cde8b341e0e0d27d1dbd
Date: Fri, 25 Mar 2022 09:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648200778
