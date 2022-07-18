Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A3A5C
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658130412;
	h=To:Subject:From:Message-Id:Date;
	bh=6GlC4fiQShcalUB4g9zn64+/HhFI81nB1/w5wMGByeg=;
	b=Mmv3Z0EwPaix044V3LVl5xDgPNepsbzPSyMZyhoxFgfPuvRwkGZLxBtqabegBljK
	XWTrgj8MLpY5vnFO7PBb5W3AjByVa6jogEIET6aSsdLH19Bsn+7y8v9REl46j2OCww6
	mbbkwmzrtCdMs8SUuh4KxHwyFHj6Ay6UrkqgBpgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658130412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6GlC4fiQShcalUB4g9zn64+/HhFI81nB1/w5wMGByeg=;
	b=TsRMp0zEcIYEwc0vJ586uSX6BfnoCipVcdGtkVLXSo0xrbC+vRmzGsRyc5gMtgWR
	OVd0JR8LyhXq2RMrdtGZQeJasAe5fYVMZIxy4WDS0W0AkSnt7IJt7KR32fU38jVq9Pw
	1tNRlPLUM5FO6FKZUxckuo1T2d95TzwphZI5+vh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182104632f0-4e95d549-25d3-48d7-9c4c-92ce5a162527-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 120d8f08e2bd4908de3777ce9a228c1f3598a8a760730e77fc3ae96e5e84dd82
Date: Mon, 18 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658130412
