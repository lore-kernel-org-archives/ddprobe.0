Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5864A07
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656148612;
	h=To:Subject:From:Message-Id:Date;
	bh=fvI060zH7NF24opHeWnTYbx2Uxg02VUVNM0peYImEis=;
	b=iglV0arx4BR+s+buvE32f1b9drHSsB9nYkORQkUmH30C4qJksRENwULW+YVhGGYl
	tXd4KymGSOjXersTJElT19wK/rwEuFqrvpSdGry8LtA5VBya6EpJQ0zPx04c2IjFioz
	q6NjeH9dIceVTCqILipeUSpxO0XwGRctN8qpLgEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656148612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fvI060zH7NF24opHeWnTYbx2Uxg02VUVNM0peYImEis=;
	b=alx86wKNAHgcnSAnzBesETzzE3x4rASPH4bmFdCx3C8RGKpSgKEpPUkUbNbCh2Jh
	wa1MtQPXR2fvBAaNLGgdAstm66waByE46gD3L9kBd+cfEtyik2LZ4xLZaJP0HkEDslE
	HqgE2Pm0r1fuuX4tod42hTs2pprGohMlJwd1yl0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a2654ef-6348901e-acb1-48fb-aae1-2563fabde40b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa7f90c218d538514e69a6c46dbc09a6a8700016e4e16419a08255766bc1d68d
Date: Sat, 25 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656148612
