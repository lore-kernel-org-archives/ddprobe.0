Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9458CA3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659676252;
	h=To:Subject:From:Message-Id:Date;
	bh=4+4WRqSkfd29KnYP8I+5zib/FdFG+H1G6yBiUayj568=;
	b=YF3jvUSk5glGbGUCOZRh4DKSKaEMYIwb39M64gCzdMvmdw2iHF9aAgzVkmuA5OpG
	dEtWf1K34pjJvJnMw3+OnjVpv91q2VT5OtJpxEJdfIAQB3B9oDDMkwafZstKMSLQZQJ
	I0vAtCP+eup3xawm2JlxU8glzDPNKO0ZyX+Urjlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659676252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4+4WRqSkfd29KnYP8I+5zib/FdFG+H1G6yBiUayj568=;
	b=JUOL+m5E1OistzA8DefOVhOvt/DGTFruc0DgqYbLvLe6wdnxuP3028Ur7Giuifnh
	QBCx93kIonv62DTliFBC79h1fyk6oM0AtSh42skqNgxslMm+kQu9dkxsNiT8idhAh+a
	dpW3RTGr+35pLy7Ahm/gRtwQc4GlsC3F63y4bSbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c69d9ac-274611d9-de37-416f-be06-d17b2e87a7aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8156e20bdc5cbe22e007b713059124de8614658738dc13d4a72539f998f69748
Date: Fri, 5 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659676252
