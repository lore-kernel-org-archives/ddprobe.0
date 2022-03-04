Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CDCC7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646407284;
	h=To:Subject:From:Message-Id:Date;
	bh=ddGUGs62LZQvpC3iKdMUVOFI9r6z+6LKMoTclxP3k9U=;
	b=eB08oDHih7v1BOMUW+kw4RYjPDD5hmIPZQSD0e/XyTqUSwT+Jyl7PahJk3Pjc06n
	VW57WwGFwvp4P2cQTOFL+qsju3zuH34/hU00Wl7AxSCbnE919z6pwx3zOmOFMwSrzO1
	pr/hEVSE1oCrwx7IGBviXx1zOXNK0DGIoPbm2uY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646407284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddGUGs62LZQvpC3iKdMUVOFI9r6z+6LKMoTclxP3k9U=;
	b=bEkSGnoSvHLoiOT704TkTIwNQGzzWyda/2mXBBeGAjVgICna7ccU2Y6HXf1W5kGe
	uuv+QsDDvEs23d25CNwXkV/+aTT/wAssThTDN90j0/w+Vr956r69Kxh3B02RxQy3Z0y
	xe+PqjZgYV8zJnJGLCVCWtq1jvKJCaSUy1pbKDY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f558577f6-55c0e911-9917-4464-8f3a-831898ec96ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1054845700a5bd6c9316bc03d333d15f1f63f6c3f0eeb27e47b46bbe7b6b762
Date: Fri, 4 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646407284
