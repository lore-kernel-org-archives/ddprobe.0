Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80626161
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659226852;
	h=To:Subject:From:Message-Id:Date;
	bh=zwzG1a5XM82ZnTyzngsa5/7YemyeLOJHt6G6HsDDuVU=;
	b=QE4PVCmnLAz1R2+6v2FxSt3rfNjUf+yPfohbmDHZ+X3zfc/Xi6ANAT7DB8rxHNom
	x870qK5AamaamMV7oIjG3d6XLS63u/uEVvpbvFrNJTi5T7M512dDExkJo/9juEJQ9ue
	n17NINRTTM9pAE9NzdSd7XPIjWtcMN875zMyETVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659226852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zwzG1a5XM82ZnTyzngsa5/7YemyeLOJHt6G6HsDDuVU=;
	b=QMBMuBCdEYHFT5+ioQtHtmyI3p05bkpiR7yZK2jlAjqNFBE1R4ZW5gqLh9BHKZTB
	UUcCwXHWfAvt0PQ7UH4/68Yk4DHngJtccanRGW9tf+MIWVtZ/Jmg/xkuB3F/NNnssq0
	5R45d7dUzC5pckn0s0YP+vr2294/AnOg7YK45O34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251a08d4a-3c06d1e3-b4de-4c78-a9b6-655bdf344272-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bdaccb5a093c685ea6f614322eef2ba615d4b10b7fd3597f13bbff2c33d705f
Date: Sun, 31 Jul 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659226852
