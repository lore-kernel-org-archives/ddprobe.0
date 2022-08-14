Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6297E8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660452052;
	h=To:Subject:From:Message-Id:Date;
	bh=/2bIKuno+hJADk6iDfIB7f2kpmvl8ksZKTjiFh3+eRQ=;
	b=N2JVVJ9xrbaSQVPbcKWyzMuHP82mCpjip+8IqcrvPSRtdu4MLaZa4gD+8F9irAop
	42pCua/JJSyvIPeCTyQZTLkRCgLdhzvW4wNIE3/beMH2iY3D/juh2ZHcD8WTFgAdaxx
	3vDYxZfPE+Q4tqKN97fb3d4SHIJ9uBhNdoUrO7Z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660452052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2bIKuno+hJADk6iDfIB7f2kpmvl8ksZKTjiFh3+eRQ=;
	b=LbUH04oErv0ilOGjgLJkswTAYEOCrVbkw2VLD5UlVv5JPsAE4G07OxgokJg8VBVh
	Iqq9apyYVIM3LijV3pJmyGNTw9LIVQ/7MRhBb/lIln4BZ5a/pzkqamN7YF/HkTwHDI9
	iRIjFDWUk0BHVueyG5OjMmY+ER1C5j/CbGVBnaJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829aa79ead-ec3c265e-ebe2-491a-ab13-e8d59d36200c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2914eb4ebb5394fccb0b4521d32b611a0f904c017d7e1267df4e54f53b367e1
Date: Sun, 14 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660452052
