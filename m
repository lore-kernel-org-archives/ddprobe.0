Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D527B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 09:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652087398;
	h=To:Subject:From:Message-Id:Date;
	bh=wouHe00aGMz4BAUBk2UHZvo3jFoc+qdh9khxMBl2JdQ=;
	b=Sr9vohHyMqGEZ+nD3wTwa7V/4fFoHO+2Vw4LDf2ATyhpBj4szxoy23A9skjBltCy
	oOZY5mFW5bfcPHOQGGiJV1+EvbSSbc5rbc40v/KJhFNsRn3i1kSl9Cx5tZDT4edjrlw
	PB476WIF8f62TkagEeoHcu9GuahFGlEpsFM+531o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652087398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wouHe00aGMz4BAUBk2UHZvo3jFoc+qdh9khxMBl2JdQ=;
	b=kP1WFSOxhhM0PFwG1A0m7S3WWD23p6zOtsPFnEQK/guZ8w9xC/K88roGYXNVpxvI
	8gZsCVQ3sTY5+Aj15vfJnv77Q0p/YfxYNEXnOdrCE7JC6WLDTOWnOTfr80QrA2trnVV
	bQIxXbOe9Er/w1q3phmcYl+XqMTiXmgBXv2K0cPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8151fe9-dbd1845d-4ecf-438d-a4e2-09ff1c03133d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25fd7e4a1b25b996bfd703980bece7d03a941c2f317545f7d03b4780228798a2
Date: Mon, 9 May 2022 09:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652087398
