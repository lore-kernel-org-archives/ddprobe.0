Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16477A47
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649534698;
	h=To:Subject:From:Message-Id:Date;
	bh=rjlWQrTbSmPNFNyld5Wpll7LNuo5Ja4CcvLDPbp55k8=;
	b=hGl5UeE9z1YyBJaYFKmATxmMGiKAScC1Bv0LR6g0+4rxVnBaAteLPA3e9WCTw2Y7
	+QGnOjxpI2OFkhiZwre/afzyPlm2TbS+D1riwEApVUO4D9m3IUNegWPv+R9XXNYA5fv
	Mu2WhpHSzksr7aqBVtdlIoyGWSCWTCdkWSxSkMyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649534698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rjlWQrTbSmPNFNyld5Wpll7LNuo5Ja4CcvLDPbp55k8=;
	b=V48gXXCCl+PVxJP7w0I06KHCJb06kkAZ1FAYb4oVZdIHgDTM6yN2y9Q5aivTqoB6
	MVQ81FWyWxqdSkTssmUx4AR04VwDOifkquUF1opNfnRhM5nOj1zMd0uC+e94G4H91qY
	ZWK/qHqMRt969AvktWxF3Nn8J2U662Bkt1rG4nHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800fee0324-bec54b04-7a2a-434d-befa-810606422834-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4b48e8f801b3822ebe4f470254ec2d4747d4e480bd65e1c4e80bdda54697b03
Date: Sat, 9 Apr 2022 20:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649534698
