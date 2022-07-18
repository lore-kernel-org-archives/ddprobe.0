Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA8DEA2
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658129212;
	h=To:Subject:From:Message-Id:Date;
	bh=9NNA/Y623EfczF2qH1IKtVtTCy2wbzlGV6L12B0gnAY=;
	b=D/wHodN4rD4XzYbzvF850RpcmUl0WMnPgq8iHd9aRY0n1aO8Bnmo3e/F3+7ckvLT
	eOmtWx1kaKmuwFdbwYpsFbZp03/1noUKCPXUHzq6FbF/Xe9GGLow05Yw0A3NOhFFFax
	TQ3hHy5j4gzB3VOatFf1WsaUbWk3xbzpFYta8nF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658129212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9NNA/Y623EfczF2qH1IKtVtTCy2wbzlGV6L12B0gnAY=;
	b=A6/uuduSp/iHM+rIY6JeACQGmM260pr324yEVhUdyN00qUr3wJOCBeQUDbbduTz1
	jNLgKMU52L3gkAXyd/Vfg4Pi0g/btr+KCLH8mpBkhs1C+E6tYwNRDhgZr/NH8AY1abS
	lFoalv609VR98s2B6m4OU9fNAb2Be+JES8MGGwsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821033e3e0-3ac8e412-fadd-452f-be1c-39baa0e48ecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b3ab6a6e8fe6b98bd89a0a1f65062935365f1c8a6a686e682ab0a83e8ae414f
Date: Mon, 18 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658129212
