Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30947A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645656384;
	h=To:Subject:From:Message-Id:Date;
	bh=hnbXNoKadd5EFoP2b80XZaRCIU4mADa21XCTiAR8r+0=;
	b=L7icZ0GTAMs56Li2IW2i+yozI21xe7EqiBBVHEDQ80vWqNUNLvKXj6g7dRXDAgZs
	C7h9F+3qhCCP3cz16SqtzRSp4T8qFqXePxOCShkNH551c1k2FUmEruF0ytPt/mOgfDL
	MXXNYPO3dLrsjLJ37zO5FnWhpeo05i39+/QvH9OQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645656384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hnbXNoKadd5EFoP2b80XZaRCIU4mADa21XCTiAR8r+0=;
	b=MkaEEaGDJTJVSUITbf89fIxrPOKRX0xSmQzvPwuh7gF4sn4sarZ28QbnYszjHVXm
	7wgrFVaZ0SfiSpL9laGeXp29RB9Hh4n2Pnlep0L5gsjKi23t4NNMlTfNKGkbqfCOv8+
	GUxmPgl4KdE3Ko6JO951eu7D5sqDV3YVGibMgUX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28c3a523-8f97bc3e-2c33-4c18-b49c-586f718898d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d989f45f40662588017d5da6e3a277b443bf1ef7717ba5ebf9165c3f2d5ba9d
Date: Wed, 23 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645656384
