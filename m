Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771BF638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660296652;
	h=To:Subject:From:Message-Id:Date;
	bh=s9gj8K/TbS+T2OoU301T+AblOi+mJHzjZ2RUv1RxQYE=;
	b=IUCSrq6FGz3X+9Lfnn0TMBYvD3RqRSdldKPwd5fSMWULsFTNITjR8V5Gjw+k0MsT
	4bmUIRiaBd9PSVw+rttBap5LOd9+YvWrukPuPtiK1cY2/jStaqHryoXWnj3G97vmYth
	V+Z7kGwJ5hbvSP5xEQ+R9a8w5pbOPUG/K5sYHAyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660296652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s9gj8K/TbS+T2OoU301T+AblOi+mJHzjZ2RUv1RxQYE=;
	b=k2VTgNUNkRVEHXmnL4OwOq50kNeq9VvRwLVr4uZGGEkmbKniITP5r0YpzPQjYZ37
	T29SvRb5kat7wicyzfesOkEazfQyUdLT/mgjagOkoPNiC+Z06RrB/G4TtUHiwV2P5Yh
	KgQcguY5sQIv3WYO/BT9MSBpuftCd/hXxvkm+OWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829164678d-9265da40-cf9f-4fae-9a3d-1a58f51cfccb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be0cad00b91e418a8275dcde177b6ea6dc30ed2a446940c1fa1f57989f9cd05a
Date: Fri, 12 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660296652
