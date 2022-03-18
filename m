Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C2B2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647597384;
	h=To:Subject:From:Message-Id:Date;
	bh=Bbo9pmXhrSYeqFIaIdXzUA2UaAELUsBUTz1GurD3DH4=;
	b=huemnrY2I/aWu9/zfPPA8UVPVqgxNphOLCMgIZS2i1yRcAFmsF5PLyiRpZ9u1mgU
	3kUdIpncsGrwG8ytYBS/SAZextDScVCrGhb2pg/wgdQzUrBMsKucrSuz3lgphy2sD4B
	ijnNEEhT9H+tZMIY0TFbD2eaFlUXHq848xj2vjPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647597384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bbo9pmXhrSYeqFIaIdXzUA2UaAELUsBUTz1GurD3DH4=;
	b=KkJiiujpZUBpizSxoPSHvG5RbXEG+cIiXnQUtgfnVJ/lqxnXg9EPvaDOJpIory/7
	/xVZuUOGocHJOG8gONH09kUg6ccUyGJZs+f4KlK1aeNKdiLLLdcRHgw1iy8H7DivKFa
	A04OWxAKBZo4G6mnmRfKhVmW8pCNAiHNorBPN+7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c74f42c-6ea04745-e93e-471c-b830-901daa02818e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a6f90da01e386c880dcbfb279c0abfe42ca923b8d8d590f1252a1b7ef501ab4
Date: Fri, 18 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647597384
