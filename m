Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C2A2F21
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649955478;
	h=To:Subject:From:Message-Id:Date;
	bh=sfoXDoZkGq0pS93l6NgPw1SvDup2qreTCTM+Rtr6GVk=;
	b=imMbTSId1A/wY9RtpsnSj/8HrdJzoR5MUCx5sJ3gtcNpvr+WdCalecwCWyBPk5Cv
	e+bqWPDSwoWvBsZADmSsp3Gnjl9e/+YQ54+2SY7MUa4o7LueVzQ5spldsjbnoSPHRk1
	zxo7P320uyaPCs2bqnNNC1uGotUYDo5QIlWbtbts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649955478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sfoXDoZkGq0pS93l6NgPw1SvDup2qreTCTM+Rtr6GVk=;
	b=V5vkgmXemmMpNlMqv53su35EAXqu85Fxu+hpYV8HKShPHPyrZN1a4hr9QyyXOFxn
	2Bo4RN6L/VqqSw5cnA+oyfW2dZfDfBS3ebXDsqGTwtxy9BS+C/B5Ye60lh1rZ7rUIxu
	LHQHwmVJFZkjap3XHYGEO1oxQRRjRcMBEB6a1A80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029029b2e-3972c78d-3b08-49a1-97f4-54c53edacc0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46cc4f07f5303238ddf7ae4ab166a422a26d7674724b715e4bb98d3614cfd8b1
Date: Thu, 14 Apr 2022 16:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649955478
