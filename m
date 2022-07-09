Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB4ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657376812;
	h=To:Subject:From:Message-Id:Date;
	bh=kk0RGW4mwFCa1u6t9LRLsOX5Z1VAwwPegmljuxfG7f0=;
	b=bbpr2vAUOIZQvfx9J2zIAMgp6FicmxRl2Aor54BjPPKNH22mxkDKoSVpQHTGASew
	Coe1ZWPBy4M3b++s3kw4R2b/IWnYh3QfHxu4t7W9/g3ArDeHTQunNgcQcxI2adiqVIM
	/YWGwtGCG3OGQdZ5Etdl6RYqK+JLRI0eIxANfo60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657376812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kk0RGW4mwFCa1u6t9LRLsOX5Z1VAwwPegmljuxfG7f0=;
	b=QLE9e3munKSwMzvDqlx2KFDnN80NppDH6xbG/OBMiyOshFF75PcQ0bzYNmwe7MuJ
	9DWQi9NcClxF6z6xnF6abNXN3SIXtlAIO7jL0+IrCpY9c/oNRotRxPTnkoOj3BSKo7g
	LwUjhchzqzpk9R1Hq/YouhhK9OvPrtv1XD3+B5ho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e35b2d34-1e32c82d-180b-4f3c-ab05-6dbf06f0038a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e733ee2bc4cc126c0f1cc6afca65d8dcb582dd674004cce880ebd56a4009439a
Date: Sat, 9 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657376812
