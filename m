Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79CF4A19
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657806412;
	h=To:Subject:From:Message-Id:Date;
	bh=cJt4Bdte50UV70qMYNV6UujymvwjCAL8gq8pj/9OMTQ=;
	b=Pt4ukPCTZ8culCW5vDYlsAT393U39O4BAxtKasZn8LO2yQAOCqRGqXUoxkrENsDi
	4Rs1Fb8SMhRFUVyGEO+vN9fPc/u8vz3NSH87MghXvrKgOExt2O2EhO+76GerH8RMeOg
	Lv0A+Svs6pu4bhsoUge0FDvgAVNJwHQMaEsn98Vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657806412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cJt4Bdte50UV70qMYNV6UujymvwjCAL8gq8pj/9OMTQ=;
	b=YfXV/Qgv6rgI1i3iNN2lNDum5EKSuk56y6GXAgoLfTRlZlkzOK/egTGQ0H6xAkXE
	Yr9Ghg/vyU6+v5qRT5aCT8FpTDfzrSv5m98mwvFj2DarmN40ZQgv44HiB4QYHZPeXOt
	ZAgpigi462gDGuO/H3kOXGvJWsU8Kh1MU+hXgtyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcf65a04-c16e0b84-c21e-46ec-b526-1ce5075233bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6f9f2d36c346315fb13f6bf3eb355434d04dd178bed8589f5e24efbbee4de5c
Date: Thu, 14 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657806412
