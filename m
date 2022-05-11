Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4A28F9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 13:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652275559;
	h=To:Subject:From:Message-Id:Date;
	bh=pIJbOux76+C2W9VkmXD4O3ngWfDxyfv926/cX+TnxNA=;
	b=ViIPPzwrfX1fBofO88m7jhyMX12nNqHDtqDvMAFOAGOWAMxWPpgqyVkzm4yaE9QY
	zfpf7ubOJjnOgccsztlMRwc1RaAEzucvZCBX4utIdtcxoxcmQBJMa/gvZAshAhGVEFv
	DJX8wNLulJujK8H0YPnvGwAUKg15B0k+DC7Q07IU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652275559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pIJbOux76+C2W9VkmXD4O3ngWfDxyfv926/cX+TnxNA=;
	b=OiGcTx4ZezlJwXJindLB163b6Mxazo/EqGVWuq6nUQUrvSrskNnsDlYDkD4BS2le
	ZeVbTP94JX4Mm4n/HwSoSu4WJulIixkRoyJAANDMQLlzWTbuHGdwAn2yqh8aLYqu8zn
	HTOhUqSc2wBP6PjyV/N2ST6trT16QMXA4iwEbEW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b34c3b8a-2f8ad1d5-276a-415c-856b-88320d6e3042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fd310cd6ae17f54e6f0803f54b02b497333b781427c55319757379e9816366c
Date: Wed, 11 May 2022 13:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652275559
