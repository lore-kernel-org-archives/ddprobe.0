Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC591365
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656722812;
	h=To:Subject:From:Message-Id:Date;
	bh=0evUJ9/EwLqXzyrgxuTR0IXB9zphV+SXFe40Bpd0PEc=;
	b=bmxv4DOKUhw14YZR4BBW9JBEzOmZ/XdqTRho6jeLL7sOPHghu3sx0Tk2RkE4B2nz
	vSG5Jo820zeike88XDQzVbKoMK+HT5KmZmWQA3jCFk8YaZuSco59mrSxvtcfnjC5Wk+
	8bOZCYW54GjJWgtVCm9GBOFPqHM5KLlhzXknoAUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656722812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0evUJ9/EwLqXzyrgxuTR0IXB9zphV+SXFe40Bpd0PEc=;
	b=BvluceWOk1N/r0XWTzNiyk+Eex4SmKMlja2xaI7W+v+QnxQQW6azGWyKCT6cm2HR
	Phmsu9ql357oOzmfL17jMf38Q4vx2Vd1Q2ryA79WIwaJlMTaxbAKcSeNJHaOHHN1xgy
	BOwlcT7Rj7jvAS06WjxYeE4SdiFj7hBHjSR5OFUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc5fed96-fbc50de5-4401-4bb8-a2f3-4f8e2c22b710-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa64b2651ed435ef5fe038f51383acd108037d7542480b5c6d954b2124357381
Date: Sat, 2 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656722812
