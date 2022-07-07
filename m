Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289FF2596
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657222012;
	h=To:Subject:From:Message-Id:Date;
	bh=otOqK3DHvv7SOyUL29sq/x1yzFUaCSqVgmA/vbak2JA=;
	b=E3X9h6cyPZM/EP1RIVeuhqDysOc0slqQIFWmNj7s7WF5LSYAVnV4nCGKUX3lh/ZR
	yjjx9WHPvE/06sF5d49uj6J7+pxIZ88OMqJPrRzg5Z86+IUyGOOndV4syGD0bohh9f/
	ZwBf1UD/xKcHBRKmcdgWFZLrY24Idkt4RnmmQRBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657222012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=otOqK3DHvv7SOyUL29sq/x1yzFUaCSqVgmA/vbak2JA=;
	b=EiSLHfZ0u+LZIVYOcVJlJIhMfYcaqHTN/iqKoA7bmXlquTtT5S/MzlNxwOOENObO
	8MKbK7kWt1T3DKpBIaLuhfpFGu/S1xisFdwOKbOsc7Rm6FrsD9fhrHD1XZMS36ku+ln
	zJefJUNmVWO6g5DwP9Vj9Xp0ssjlIQYkfjV14ieg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da211d9f-13393261-db6b-4255-8f9f-2354756881a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e70009350d3c7ee226558b23e45eb486b36d420c02c6306eed901099caa113d6
Date: Thu, 7 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657222012
