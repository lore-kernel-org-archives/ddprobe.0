Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0C47E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 19:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652039098;
	h=To:Subject:From:Message-Id:Date;
	bh=G4jiSOkxVxwPBg1vaGrmNXhvnnhMqK6i6Ogafg//Snc=;
	b=QXY/jZZrFY3VuUspPTR5hYTpCM7McYBvAhuDqGeviEjwmIomU02s7A6Ds1v6f+Io
	S1avGaluWmfym2cvRGnoLjWxgVQUKdH0Gb3rQXIHiiDpCvJRAL3DAX6byAjciYKhND8
	pJeMEcqX4XEaiXYvcrCU1wWQiomtBhEvE+6ORir0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652039098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G4jiSOkxVxwPBg1vaGrmNXhvnnhMqK6i6Ogafg//Snc=;
	b=kMtofN6plBrlkeGVWU+t0EQ5pp+HFyikHsEzqrptZxc8BG67wf9vNUezKluTHIxc
	KnBt7dnYK+Gl31ABajBWQEV7Fh2FjC54M2ZQRUZiRx13kr4AvNlraqDl0lnca8c2Sc6
	LmUPH73C9dJD0ooCeVJndOx6qRII6X999zUP3Q3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5341f74-c53982e0-41e9-4625-bd3f-a2d5acff919b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b95a5f5731b2d577a8ff19d020fdd662ccbec3b245c7d821b7c5a757d2dfd141
Date: Sun, 8 May 2022 19:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652039098
