Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AFE7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655297039;
	h=To:Subject:From:Message-Id:Date;
	bh=DgnGFt+6UYYW+AwyhlsE2I4Idbhdd87KfwGOErEQIZ4=;
	b=PwTPaOrQCSc40PWeMX+2uZBRQr557avANNJ+niHh2aV2bvAxjxiISK+S+6BYkrDc
	ohujd8I8k3ljkxpQ4zz+bTceb1jL3FJtdd86/u6WdLXMzhR3oujZU69/L1Z7eeVMCvC
	VIORlnv8B36O5zJn/Rp3t+Sw8rGE9sUAznzn8jAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655297039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgnGFt+6UYYW+AwyhlsE2I4Idbhdd87KfwGOErEQIZ4=;
	b=jgzBbf2qBwtFVbguBmSjWdhFwfgpO//gZxt7lDvCwsIhhIP2VG5mNKlQcVGqJr6M
	Td1tUMQTrm8gc3c1UfSw52PBwLBqJnskIO/SnKTqtCoObiR4yzB9uoagXzRj9c3d2E1
	KVJxUhWQSSRO4BHopqwB3cYzvU7diCS4sru4s5uM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167645bab-43f97b71-b571-4716-80fa-9c6e304d056e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2be66776ffd3e8607fa8767c4a2c66d734f3cbc9f8ace27df5d2e0b370009634
Date: Wed, 15 Jun 2022 12:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655297039
