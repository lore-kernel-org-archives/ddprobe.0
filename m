Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C163FC7
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656873412;
	h=To:Subject:From:Message-Id:Date;
	bh=92NtntWYD08P5Lk05zf7Pl1FCXpwYpdrnA3v9+Pa+a0=;
	b=E8M9Yq4HT6P8xeCYqy89JOcuaRwsG43k3wTDqDLwFQX/Cy+sbP4M8fi6SoIzGsX1
	0O2wnfHnXK9DFskXO6/4f1vqOYR7fcMsPMnQpV9qMTjfRLrLSpMMSqj20ftCOXlhKf4
	nAY9Ur3oDVpFvD0Lwh7+v9C7YuQXxplUu/DFNTGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656873412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=92NtntWYD08P5Lk05zf7Pl1FCXpwYpdrnA3v9+Pa+a0=;
	b=gRYPi2IkZZnDu8XeqBkAYqATSh4G6DOOHHJogtuRaZ+P/zBlc9t8YNLhDFAnliRN
	bx8wVZXYkELtzMfVwNgSzaO6yYUK5yI+4SLW8RDB1cOQcIkofCD/d50M3bw1nAP91gZ
	DyJ2GxoFh+7DAiMchnRR/dHTLKM1cCw94l0GaacM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c559e6ae-dcba0837-825e-4363-8599-745a2cb63934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 627b51f75f19ad4ffad6fe92eea4650af565bf386f12a02942af6f53e20bc683
Date: Sun, 3 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656873412
