Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281F229A8
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 18:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649441398;
	h=To:Subject:From:Message-Id:Date;
	bh=Qo4KE2cta7bajWMI4e1108UecNGTqWPOKfKSkchMOn4=;
	b=AxCVw/VvoLoSWCcZeGXYWisKqhjUWi4pzQmYnNMrIQOKjaPaOg4NRqPTIwLUlWWE
	AD2GlfiMC+nbEVdMkDExNGvZmyhOcN1PVifjEMse/II+S0Xu17mjvew5WphC5J06MOS
	mRhb7FhEet8vKuLHh+de17rq8D872P4/nHwic9AY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649441398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qo4KE2cta7bajWMI4e1108UecNGTqWPOKfKSkchMOn4=;
	b=Aqotr9y86bcV2/83G4Ow7b2pDjE16lNTqY3j/LjbI6Gn+DRwVj/gPgc459eGyWSt
	ccz72pMve3paJh0wRko3Ft6mifDsMUy+lg7TMDMLbwU1hx8Dzt2XSteEZYoKLWoEtSY
	+jK65bpcyz9QqkyKZCiTEnyVzzOngySJWev69rqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a5e5e06-51a95035-6ced-4c6b-b363-7edeeba3436c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c85340716003bd114f76656dc130930ea25a90f12548442baf72c15089a847cd
Date: Fri, 8 Apr 2022 18:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649441398
