Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E091C3C
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658287012;
	h=To:Subject:From:Message-Id:Date;
	bh=XNSq3Dx/I4DPWPXilLmS7+DVzCEqC0qcEZlJB578ql8=;
	b=WRu1ezqri2ajnpO8Z0y5s4eKIB/hWHsLZ4Q061SZMNEKOvOalKIfgd4Q6ylNGu6d
	hbQwUFWbgIVw4Mx5Z3s0PDLt9NBE2qBBRkW/CZZqcqGCtZITphLbszr2ABVABMMPMWP
	ubvl9Y5kN8eF9PMDNh2gvTDl21Iz+KzSw85gFrbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658287012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNSq3Dx/I4DPWPXilLmS7+DVzCEqC0qcEZlJB578ql8=;
	b=M2kH67Vy9eCZZk1Up3vTjLr/aoPrIyIUnHH4m1gcqExGtu41uZ0Yp8pEx/deVbi9
	L05VpfnWtFe/rLRLw/QgUJp1B/WUpTKEPc+4J+JYm7mpkhN6QTYY/CtjV6pi41fSiLb
	iVsTJT3M8YiotXVoTiYj5xUsoJY2whflhkZBZI/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182199bb9f0-9426a44a-a570-4756-9974-8610e134e3de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc679da5f459612555e226a3ebcac174c673f540e1216158c34c3b71e7592594
Date: Wed, 20 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658287012
