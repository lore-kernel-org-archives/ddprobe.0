Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538C833EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659190252;
	h=To:Subject:From:Message-Id:Date;
	bh=98cTt47a0oBbITUfH1o0Laar6+aGgipIr7AaD4cJsMA=;
	b=eSNnFeh92aPIFF4Oo00GMv8n18B9+O48xFqz5igcrXmI4mwJw6tuOQGXFUpwiSyo
	4/GAA5+n4Vws5IAXVcy1l9tId58528x9jOu2M1teZAYg/TchhvkuiKMx5G7NnAdj9UI
	33UgZLdFV31HcPljBzt01uhc8D7aDbZKnakyDvaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659190252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=98cTt47a0oBbITUfH1o0Laar6+aGgipIr7AaD4cJsMA=;
	b=RaTa+t+t8cq7V8imYyryB/PU4fGfms0j+eCz94vv+oLFjCP29gET+WK9lQ7IxcAB
	vVG/yNoofHITPAx+4+bjbHdYoLNn0zIOpFiKI7RMCYpG3AWQ8ci0qNFrl3WcCuj/xUB
	GeLLr+BLMD6Gwn78f2iB4DCMm4QziveNnmPpnj7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f7213ec-ae0e391a-64f7-4fe1-80f6-66c8445aca7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a10ecf65663f8a2d1a13352a2e6cd3d6956eeb781a35640ffadb58af3bb3d278
Date: Sat, 30 Jul 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659190252
