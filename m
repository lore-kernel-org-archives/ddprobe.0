Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BCD809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657277212;
	h=To:Subject:From:Message-Id:Date;
	bh=UrbdFLX7ZFYosfnw9bSzDQPdtQgf4RushcAm9TEDCBc=;
	b=CsXhXeJAjJbv6D9ACqFDJkq4y9K+FP4Zut0If0ulnPghwRyCZ20v1mamQQpktFEH
	lZ3aiAlsJ3vaU9ejV15A6b01a9B31bCleY8sUjVrqSkDm6vRPBfG0nQHtMLm2DFpNmW
	fqNg9gZpV5TcoSQPKm+2TyLVDYZoTimFSOFl+5Jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657277212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrbdFLX7ZFYosfnw9bSzDQPdtQgf4RushcAm9TEDCBc=;
	b=OImHvXSUigZwAU15HJDc+YE1kMBQY7zUH67QUn99iO90HPfBQokkRm8WakknDTBP
	fjwMm/oasqve0fYFb3s7BfBpLLoFRMDztdm0FI5cgRkrKVHfQ2f+DPf0Hb6r1SK5ms2
	nfpduruZ0TjK6OKlNxSiZYqr4cJ+kJ22Ir0y7HR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd6b6673-9d9e3146-b68e-404f-9587-f1d3a7f84e47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b77ab8a541a52850d8650bf59bc39425b883560666818d343b7edf07b0d676fe
Date: Fri, 8 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657277212
