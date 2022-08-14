Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F6EB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660472452;
	h=To:Subject:From:Message-Id:Date;
	bh=7Pd3QvUh08/BecjAlkvV1LhPMh6zgZUa/jFl0xsUyXg=;
	b=CT+Pxq32t6LgnH8E/g5AyyuwW4riC78SmIAl5t9ieVZlQN7fuCRWfxuSjFmQbpFd
	j4WPGeFstw1w/BINiv7M/s9P+XrDDetNVJfRowrTy8uvcjlMTLCfJScsfo5rNUBOCum
	CsZADqUj7h4JcL/HCBtr2aDx1zmo3Scqsbe9uR/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660472452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Pd3QvUh08/BecjAlkvV1LhPMh6zgZUa/jFl0xsUyXg=;
	b=GmcKCM06kXKz8tH1a0FmMdxYrC3KlNbCj+F07FSrg0QGgNz9BaGvTlevSEo6aQA+
	JwjCYhx8z2Kr7pwaT3s++2BwXOUyTP/eZAt+OrxQKPa1EJPp5maAZWEEtwjL7Yq2CeR
	wbJN9pTvNounrZ0Rtw2D394cUX5Y6wQOIdduCOII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829bdee5ae-7956eefd-d040-4c0c-a656-e0724159d418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0357d9df6eb2d0df1a7ad17a050a649b5329fe93df22825391b42656a3776fdc
Date: Sun, 14 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660472452
