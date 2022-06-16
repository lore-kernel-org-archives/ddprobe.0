Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1B47E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 00:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655337779;
	h=To:Subject:From:Message-Id:Date;
	bh=g4T1NjhcBUm2zP6WdyTbEUz4QGCXT+JyjlliFvjedQc=;
	b=iMQlxXp7gnR0Oc+4YNpe81hBROqWeKWZ8+HJ6S/4M6NLEMImVapaktFNOtw8+s+b
	x6kRNIKYeYZqI5uI9CLYTo/GT+vhqH4jOwHrVhk/pJ/IxxORgByv5suLLHgcwi2p6sW
	Gt15MtzpFg/K+M+JnuKoQUXdFxIQ/Fn6YfjD9+rE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655337779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4T1NjhcBUm2zP6WdyTbEUz4QGCXT+JyjlliFvjedQc=;
	b=YiX5/SduySvkPpy69eUls1eFh7UVj3iuAzpAx1XXgOSWBc3oiOOQ7X1sbuqHcXFe
	buuMFODOQzU5MmiRZcKlX9+NsTAG6tODWNCeuGozkM6GKLs/orbXgQuEXEFGhPfF5qL
	pcL/FgL40IR8c2BpxRWwgVDHmVK2gPebq00JKCpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169d20052-79bcbc95-11d0-419b-aa69-3532d8104424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9468d44a5c2c5d8a80d56b4b36f966e56a58953604cd21c0fcbc857b8a654cf5
Date: Thu, 16 Jun 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655337779
