Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BDC7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 02:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651976338;
	h=To:Subject:From:Message-Id:Date;
	bh=Bk1mOfcxltBCqkdBNsXVfsXaUKbCFGJvQpY0R0kjsJ4=;
	b=hU/z3x5UFqPwDs24qV6QaraaQg+Ew2aQXfRDAzngJ+ZF0Po3279cIEjGvVGGk4pu
	1FG8VOpgMa3Kkryx/wMRAG75iUg3+Jn9icnuS8tOAn2TIIfRrLOclXNlXS4nWO98TeR
	Ak+NB+REuYzakwamCtnz1KrbzfJ69EEoge8cmAGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651976338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bk1mOfcxltBCqkdBNsXVfsXaUKbCFGJvQpY0R0kjsJ4=;
	b=B8htJoup7S5uyNGJESl2MccROssiwVAq9UhR3jCqq6J1MHVYcPdrADTxPbP1s7U+
	qyv9b7xcc3deYnvJtaG0zz+oz5+XXI3twLa8Y8z5R3xOr+zOLlh0dHfCLk678jENqgK
	L412lQSSlb377oOFm4n7G62y421FJ25BiDHY/3h8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a1767b49-3e57348e-40f5-4cd8-9be9-4184a62af130-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec22dbfbe7fe1216dc84e73e390b3bd8a775f02ee405f731c4e34a088f5a3b1c
Date: Sun, 8 May 2022 02:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651976338
