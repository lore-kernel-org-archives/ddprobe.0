Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563FD816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647155484;
	h=To:Subject:From:Message-Id:Date;
	bh=Kff5p3AEag+BJFVqxsI/szL8eKMkcnhyWI/eGBUHSB4=;
	b=REAGnsykSv6lcQMWvExzXygbLLMOU52CX98nMb3wLRR7xiGgFO0Ot/K6jz//qylb
	WeRHL1OSJxrQeaAC46vFZGc0nFBprJJpZbAx9Cs2OwazwM9VqEoyrfpUlCqL65NRy62
	RMWBrTS5NKc6PSI9lc9jlJWBXDNI7DPs1uIWJdME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647155484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kff5p3AEag+BJFVqxsI/szL8eKMkcnhyWI/eGBUHSB4=;
	b=dxgCwGbqP6yWKZzrDBMWUOd0Mh1QEczN1kaLRpEmzhhl7V7Ao0D6yxB4jmaoHF1n
	8q+samuLtLGhP/KK/6sY48v53eLw+JUQ6hBimDCmhK5AVn0F7LtSGWkgGr7BQ1+Pp/5
	TsScfc+1xtgHN+UYqn1P2F/RoEgZ/jv9zknUuvH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f821e1837-4a05bec4-7b12-4b08-ae4b-87e80f47fb2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b73f8385090251d5a0bb60248ba4fb9d5c4187d8e34aed06eee3cc612975e8e
Date: Sun, 13 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647155484
