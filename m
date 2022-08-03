Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B63366
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659515452;
	h=To:Subject:From:Message-Id:Date;
	bh=FvmBAYxcOnbcRcVycUiBZInsirMw0X8FTdal2Urs5rU=;
	b=CWeN16qT2cQ4uIEvjBDrTPL7xcSgyP+hqb0r+NS7LmEmWz9GrR8GeXX2ghsWD8sr
	RwDipmGtk1dgQ7OU4MNzR2HXBr3Ps6TiTsbUZY45ZF5xx4QMoFGTutMiQ0O0vyBV/bW
	IwC6YQB7RxI7iP8uomL2kqU3u4OfcVaB/kXrubEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659515452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FvmBAYxcOnbcRcVycUiBZInsirMw0X8FTdal2Urs5rU=;
	b=UzrZAsrvbi6kdSABCiRF7YkFMVT5pTsqr3CoEpNHw7DfC/CuBXLOt/t7m9ufM1XL
	HoJ0rfTs1thwIOTXvhV5kuEziBbgNrrscyLtHU4Mf+gYhLM6YqH+2c+ffN9Av/U2wpA
	AkKnP1PQmpMYpMoProEB6v5V3t0nHKyzbeovGzEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262d43ca6-ca36655c-783d-4ef4-9c3c-b213be67f0b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0f9b4d20507dc19856c76a6e27cf9f0413d25e1942a5713927dcebe083bceb8
Date: Wed, 3 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659515452
