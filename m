Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E51850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656676612;
	h=To:Subject:From:Message-Id:Date;
	bh=4WhbAJEln83tChRhKlaraIL4c3DThQdNq/5wFmx7IRI=;
	b=GAfmcD6IrdsjGIGNerskpK885DJzbJRa9WM1PgocShwchcaWn/GJU/Lsaw1jVSwv
	0B6eyZaSwEBSc1OlJlWhIp60UNpX4Nqk/iulE6oK059f6i7sUdfB1tplKa5JBhedcat
	074JeFkrSUDNVD2Fr5FrQEb0cRwuym1rLrZk06Ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656676612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4WhbAJEln83tChRhKlaraIL4c3DThQdNq/5wFmx7IRI=;
	b=CFyQ528MFW2qjhkJ4V6gG8CVNsWJVm2NIBP+AfZik4hLOj+QBjcjSdHHVL/fmrYF
	K0sBEPht/qHsglyGhWh9PfjvlbJGQftq8ACrs4/42IBDdqg0OFGrkNKoBi6Z7RFIDci
	yeGPRQ/hRLXUTqGlSC693S+jUjZyukJL1wvIriNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b99ef90d-9026d0f6-72ae-4dd5-9a07-0eb26030b841-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2076e06829856ea07c264f2fa317ea4fef668bb660e849ec4fa3ed21c46b6dc0
Date: Fri, 1 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656676612
