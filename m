Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E1829AB
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 18:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654884419;
	h=To:Subject:From:Message-Id:Date;
	bh=EjGF09TjToRIeyRcAX0qt1pldVfkqQt1t/Os5SAAFnI=;
	b=AzCB8NrGgycdPYJTijzjhJVLv0udR516WZf5dIfVhYIKxcpjP3kW6epnJ9bUob6Z
	VQ5G22LHv0PBPNAz/cJP5qYJGu6O0uM+zQovm55LrDHMaF5e1A0FKkW2DDYqXqG6jcf
	HbFsIVSBf0+M3MDEDa2EDNqlMANeU7uz7Cz/v5Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654884419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EjGF09TjToRIeyRcAX0qt1pldVfkqQt1t/Os5SAAFnI=;
	b=iACf185SADW90cmuGK5rDCmQvvtQi2M3k3II/3rSncYxyf76bNCCUpg0SRaVvGFJ
	TjT/iS0aGCeSIvyNoVhkEirb3CMEr7nLciHs/9Di6bPQD0UpZFQ58Im7G2VFOiXx3EO
	X525rQFEAStKvHYGtquX2Y0APuVTXALYz1C/24ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ecc46c4-a320b47a-0aa2-47e5-a8e0-50b034c057d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ad997a0f40d17fc7af6242cb4de788478d783da729539a571e402385fa3e030
Date: Fri, 10 Jun 2022 18:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654884419
