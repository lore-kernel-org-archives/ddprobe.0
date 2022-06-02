Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9143D65
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 19:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654197599;
	h=To:Subject:From:Message-Id:Date;
	bh=NKOzUtKyl4zqoB0tdtLV9MzzZwu1N52qbxZbHgcoS/M=;
	b=HlgpvwRtSUIlMCtuIeYpmtImx7VMB4kokW0+Av++n70d99zRLwQopMfSEAdB+XRa
	ITnHo7doQ8yB9cb/n5gSzLnewZvib/a1vAtLDzZrREwtNfVRT80KU0/oI38WM9JDn59
	XS4qeGkbx1AiLOPVZRMu4wt+zSMLWtdieIwJIhOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654197599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NKOzUtKyl4zqoB0tdtLV9MzzZwu1N52qbxZbHgcoS/M=;
	b=PoQ2Mttr44xSMlTuKs+DeHhDbdcoIlFnlB3awE5DU2D8uO3gmuSNVxHmxNgqXKxa
	gD1P3oBZrpiZ1dhmKpM4R8c3wZYsCthpU2fbsbWwSUR+MQ6DQsmWLgraV+gmNgI/VoG
	h0cLfMz2qBf6lxKEF+D+46cI+J9vRUPo1Vwp/cYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018125dc3c49-190d961b-6631-405f-99fc-a3dfa83c3346-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd47d6cb77d89710b819ca2689bc682c9be38d11dfb980850b7a61bfffa39ee2
Date: Thu, 2 Jun 2022 19:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654197599
