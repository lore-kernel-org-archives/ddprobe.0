Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F39333F4
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 17:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652461499;
	h=To:Subject:From:Message-Id:Date;
	bh=ZP7aPguDwMkTPnfI++LanhhJmhS5Plw8A9YvkfO7TrA=;
	b=EEUckvXFeI+xLBSM6lLa0Z2QyjpYF/ov1M6DOuXPoVCmQ83WxJyUau4DFbvGQ8xZ
	CksaJsGUIn4LSopBTC85XHlfDjuuvC83x5IQ2NNE4+Nv97fXTAGEfHKbn0PWHxidfsX
	2ECqBCwPYOgVrRVtgZCTjtqpi07Pu/M1Jx/XpUhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652461499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZP7aPguDwMkTPnfI++LanhhJmhS5Plw8A9YvkfO7TrA=;
	b=kiDFigvio+f67mIbCuFIk1YyuA+OoQ/iLLLV9WStQFbOtOnTpDnd7nJ03qAOtNA/
	IWoC73qdWIeBo3EuZ6MtPwcEcJ/WPGR8n2IDrBcrEzMyVz44oXFGrn2/R4O8C1D66xA
	LoodGdWsfr/n2OfZF2ngEnk3pWKdMrXKmQRbGM9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be617368-930dda3a-9f85-45cd-ba61-8345b140b1cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5a12fe244e29b2d4b6dc84adafed184fc7a9251a58ca26c3e1915baa5a9ff73
Date: Fri, 13 May 2022 17:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652461499
