Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3414F2C9D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657796812;
	h=To:Subject:From:Message-Id:Date;
	bh=dXQGM1IlftZReG7o1erqIuOrli4qY8Tw3icQAg0xac0=;
	b=YCyILPn0sVlR/lkZ/UQrxrvPVoURc20rvr5KKUKGDyNZaGXmZ68wpeZ1Yr8YqIF7
	HrIcTq8yn0LOY1C5vN0SrX28O2NaUQs7yGDEIhY7cCKQyGq+Nw6ZJ33TSgJOwS41T7L
	dUp1fOlJb5lbhUxKLqZYkM3mSA3ofRvSW6s2aseg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657796812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXQGM1IlftZReG7o1erqIuOrli4qY8Tw3icQAg0xac0=;
	b=Vt9yfjJfMx91cFuM5vS0L5i4ToHq8n8TY8p6nCNxHjbSdcY07ZFibE7zVv9JBc2T
	CKVFDJkAiBBF3Qm2K4xK39xADErlbbhYyPkMP3kbVCP8k/dVLuKsxez8J8E69KddVpk
	Ytl/EtOoMTLdkQWAKTRuS8ZFBiXRqjC5mYghllzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc63de92-27e0d3cd-ed4f-4f9d-b5bf-0b61e7b8cac3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3fde47196b69a9eb7d1da50b71a80657d7e81bc31e4e69bec296c2cb7a28c11
Date: Thu, 14 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657796812
