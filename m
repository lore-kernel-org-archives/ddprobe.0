Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C09A3C
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648038684;
	h=To:Subject:From:Message-Id:Date;
	bh=xVbBTNfxNxSfCBjBYPGJ1o/53aImvnjZgZ3P0gb5CIA=;
	b=kQOYuYlcFGTX4i+UzYBp9XPAHno9kQniww8hJhHz+O5kRS3H4TY/1C/KgNTHlBja
	XZUyHXFr0PKWWs7U59MsBwQpfMiiDbX5PjzNutj+KWzyVxhfeGtceOLSA/YeZlOdh02
	TvI/zKgTIed6y+JUVmnmHyKAVuQlg2vuNgO1DtfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648038684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xVbBTNfxNxSfCBjBYPGJ1o/53aImvnjZgZ3P0gb5CIA=;
	b=aM1W7suaOiCRrMdaWDELZ1PtxFsydZDDIxhY0JwpyNSWnpazrh1wKkcvUVnJJe6N
	r+g0lxt1z1RN7hYEDOW7Lnw+1zPcSOHrPhcMIeijcmnjYrC416rmanwvZblRVvd22uC
	oP6Svuoukmr7Uug38/+Pv3Dsk/XQUxyhyzqXHS7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6c2a843-5bff9912-dd42-4a98-bdba-dea0d4753fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d7cf5da7a4da319c43465788a1c748545e7d479c8e62a4d8635fff599c2452
Date: Wed, 23 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648038684
