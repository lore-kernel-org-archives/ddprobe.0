Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F66362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 00:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652488199;
	h=To:Subject:From:Message-Id:Date;
	bh=cXaSpxQWv6/qeDjh9deNYheNlyM4JsCPbwpbnoHZxFg=;
	b=PWItaq+r7MuG8v3dOCWMIdxSfc34siCAABvcvcq2Ya42C8NkqXjRzdtylOX5osGQ
	yRXN1vyR5XhyY/QqZTRoiiOta0MicfyPnex/e8s1By3uD9YC17URW9D9DB6OGTH9IyY
	Mvks/TYR4pYJpHXeImC+HDbgvaYNdasQJZEf2zgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652488199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cXaSpxQWv6/qeDjh9deNYheNlyM4JsCPbwpbnoHZxFg=;
	b=A4Zn1p6fTOyxvGTmVJCrCOrnuilDe4dzBtrx3CjqG/jxZy49V6ugxCV/S+a5PTuo
	J2qrBiXHgs1UO/Sd3/2pfiJuRgJTSGo3bEg2bKGrglZO04sa9qQLifFgZg2A+nuqjln
	iadaoockaVL5C92a9L9r5fQ26C4Qa9goRnAyJtcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bff8dcd0-e2be8ea2-c306-4646-b7f2-ff3a8fd4366c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ca2c94a9c98791419c90102346eeb025fec5211c8194eb6427967de6e5e3d78
Date: Sat, 14 May 2022 00:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652488199
