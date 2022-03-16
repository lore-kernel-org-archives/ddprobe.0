Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC99C2F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647425485;
	h=To:Subject:From:Message-Id:Date;
	bh=SA/fZKjaOIUNBMlnxubQnOd3jgTrohp+YvC+E+KwLPk=;
	b=g9PBEcnnzkWgy8KYnXEjNCs4tJsYG4xBgPzPcLru4LJV1os8YKesDxJ+6KOd/0dZ
	2r8ryXEUqHpnXXGpBUE/p3QdqlKy67z+3Tri+iUfqBjxW1IDuuyR6cQM9geM32WftnR
	EUJ806B4hkCrT/21KmTX3lkmMC6iTyRc52eUM2ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647425485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SA/fZKjaOIUNBMlnxubQnOd3jgTrohp+YvC+E+KwLPk=;
	b=fA7X/4MrbDtOp5EbLlTSit5eVB03xaHs6/gj7VYRkP5YZNeKMXnlRHSQuxwNhmSV
	xHpmpRDVgP0t1LXnCQiokjjNhXeBDHed0ovVfjSywjk+NTXx3xS4bhKNFNCeBmGiRNG
	6d/8rPjaRYpFriBc95+Myu4m4hhos7+M5ZR+LsJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9235f806-1d298f29-bb17-4189-a1fd-98b804e8da25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3960c5d3d35eb5ffdd5b539eecea8377f9c4d88da7aa784ab03373a0342874a3
Date: Wed, 16 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647425484
