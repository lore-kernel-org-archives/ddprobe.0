Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D915A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653021599;
	h=To:Subject:From:Message-Id:Date;
	bh=ipsiZvMDRDdUeM+hp8cZ/WHNTDJkHnlkQ/n2yMYHs2M=;
	b=XZ5MLVC6txG+of6nseNXMNxLyt2KDPKIoAoyusBNCR7pX8x5Su2qby7SXUl1ykpY
	6yhf+h29vooTwudMgMELCm0F8+yVCEr9ra1DAPYp+0+6BfsIgIsTYhnDevUGWeSdRa6
	qoMR2+Nn58oyQERFG5CPVB0X9ilAbr/dNlAUy2Uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653021599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipsiZvMDRDdUeM+hp8cZ/WHNTDJkHnlkQ/n2yMYHs2M=;
	b=EPPVs3KXKeh/TiJIOBMEUg/zCrDZ2LkO6OfzPFjm+sJotDEmFRleqzpJonbNh0Jw
	lo+nrU1g3OP7dxAU6jD5zcuMOIRuthPtNU41FsSIMKP+8Qp2MqHHkRwvp+qgShly661
	HjD1hbxItvG3kT7D27EE/Rmh15BkWRMLHqT1zrNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfc3e62e-29b57c01-c189-480a-8582-fcb837ec7939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93248df2800e94ded98f9acebf6385e8b1476866f6e4af10374eba654eddb4fc
Date: Fri, 20 May 2022 04:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653021599
