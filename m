Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E337C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 13:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654608479;
	h=To:Subject:From:Message-Id:Date;
	bh=2/aY1deIGfSSMrnmZN04CTaBqC1d7map4x0mB3t2+ns=;
	b=WsWofPPZVi2nt6FYSqvGRpvyuUDUaLUpzme1GWeFKWoV/FjKjIUkmC/a0yiL7t3c
	ZsEEMujL8go7y00PZ0rUmQ5m924jAtaZTbnZ6sRXNcx4UiRdlV6w5fsAwbn6jt6+JGq
	8saXRUTjqf6akQQSCiG1A57xK3BoaQTRccjLNv+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654608479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2/aY1deIGfSSMrnmZN04CTaBqC1d7map4x0mB3t2+ns=;
	b=UaqjA1tsQLwBMms3IPWPT80yMrEivBzV4/HHI0+54uhQTA3j3DxTptp2++8TFnZw
	DUXGI93t/iurXs8Euv0KtzvfFRc5yzVaC+Dn6MB0nB2jGIfY9poL5qzCVnTUw5ALXet
	MD/o6kRUh9qquqVq7bZkgUdmk9qKh/g7mZe9lKP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e59c3fd-cb0f0667-df9a-434c-b121-147e4877c349-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbb2b3f89af248e6377a680274e2f2fa7a49b959fc461493829aa940a768782d
Date: Tue, 7 Jun 2022 13:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654608479
