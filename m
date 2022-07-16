Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626907A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657948612;
	h=To:Subject:From:Message-Id:Date;
	bh=RXerppi1p6QfZlVuncFIaopUQryA3+IoBLn7kQSaytY=;
	b=aRWKSPo4MWeNnILSEAazvt+vDn4MQ4ZE6DYeHvuoUVjV2BptEU1wSpbd9bPrt4Ho
	VbCWZinx96nNRgAHKC403ZKiBGM9AaJ7WfikbCtjy5HnzRaFLenwped5/zPJKzEjjIi
	jjZ1+WQ/jm1Ohb72IlvkP5sLbHgG+4+RsdCX62Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657948612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RXerppi1p6QfZlVuncFIaopUQryA3+IoBLn7kQSaytY=;
	b=DMZ/HXBPzZgkyOWZ/7EKJDyUoOS5nlgd0jJyE79qF/iVp5bF6TCJRoLKG1ffiIFi
	ciD/U1vS0JGYaoJ1Xng1H8AH3e0mqBjp/NLgPG88E4p9f35gEhsfM4T37vaZutYB4Bl
	TVjH9nypjHP6A0ZNEaLkX3rKrJs/N3g8wBq9gGpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182057026f7-aae55b32-0186-4b5a-a4bc-5bdf2f1b3b5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90e832aa91ff06b8047a09c06816a1828e5757397080183fdb042b7b52346409
Date: Sat, 16 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657948612
