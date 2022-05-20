Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125587E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 23:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653089639;
	h=To:Subject:From:Message-Id:Date;
	bh=ULseTq/AIh3lv87kcnZTp/lMnCwGmminKqGLdUm9+SU=;
	b=Ri/efRvsJERGoqEvl5oaWb6IkZh2I5O+Mc4h6UhU+LWZ8hswpFbK26ERVfo68PuK
	Eaxb/LB55d8lXz2fbk1SOsgRFOVSYQH30T98ttqGiGl0B4iYW7m0sRMv353O8bl3DFT
	ItWp3yCGZpAq1nKwWHCQdeR4FEBn0IDU+4D66uA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653089639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULseTq/AIh3lv87kcnZTp/lMnCwGmminKqGLdUm9+SU=;
	b=Ve5fqrHhbiUvFNuqAhUBD4H1eWDzvZsx6n0QPoa5dNEUjF4HiwAtPPCAJ2fhBmI3
	tuCXfJb3Fk/k4F56dZ51x58R6n21eyCJSxZAkKINP85psGlvk3B93T2E5P4Taj+Qj2k
	J6Uf7vLunl2z1CSd9xVcOrtWfPbvN8PudhsMUdlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3d21ba7-d69c54e2-7ce0-48eb-88ef-c5abf5ada076-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dccdcc9a2d48d76ced819c78a4e22a29c81ee5ed3f943811e682fc0c81657684
Date: Fri, 20 May 2022 23:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653089639
