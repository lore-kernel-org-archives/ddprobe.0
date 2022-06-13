Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF847A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 02:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655087819;
	h=To:Subject:From:Message-Id:Date;
	bh=gSyQmKcygG4zL6TYeUNFCoN82r1PDSIJmsZC7QShtgw=;
	b=Co4vXdtaiWGqkNrdxpnx0lSwwz5PLcbI0cTFdngLPUL+aSu6oF5ZB2j8aRxw2FkU
	E5F/QV0acxeFdxo7NWZYeMgixO7Ev93BwOR9/OB/QTiqHsdwDAqFWZLt6Nbwdx+qwN/
	WPxAMVz6I2WIemsZZuuCxFE0pO+OX/fm6Hc1RzPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655087819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSyQmKcygG4zL6TYeUNFCoN82r1PDSIJmsZC7QShtgw=;
	b=fkcLeVrIqStFUOHeJcxBDREbr3BMe/GbcbAfyw4KLA6TPmGej+iyiGSrl5NG7tsz
	C3VlgOFCVETEpyOcBo2PXO2S6Nv3MPWypFHgjhKYzZX1bmhEPjggNzfzSQgh14il+K4
	ftoMBsee3w0BVzOayG1dNoIr1E98/X2qCXFMEojc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815aebe9d1-6ba3d9ac-4d99-463e-af1e-714bb7284283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e3b9d1a501a891ae331b03e90dc7a8b7130408117692401ca152d03576ee79c
Date: Mon, 13 Jun 2022 02:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655087819
