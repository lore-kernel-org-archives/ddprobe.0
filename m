Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8FF19B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658651812;
	h=To:Subject:From:Message-Id:Date;
	bh=WOtT2opG8u9nuHC2t8X/uzcHVRThrO67LZFd5NEFN4Q=;
	b=PdTI2Tze4NNaMldOGAraQHY47j2DkEvL8DLffWeBXZlmcvnyevbuhySIDmjYCoVJ
	6KhqqIAP3rCi6xsI9y8QdMeWJWcUuUs6FbRWGhHkUW9NrSybw3AHXIJSRHDIVKzPdZc
	0NVJBj5wgauDKDbMciI4NnNMEqDS6EuokohVfnjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658651812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOtT2opG8u9nuHC2t8X/uzcHVRThrO67LZFd5NEFN4Q=;
	b=Oc8IzStRCZH68CZP1dZH0f8NFdbuEl5h9AgbBnblI8trDLffLR1KYG1+CMMMNI7I
	s7qB5Z//dm2TrJlHrb225KHRzErlI47m3j2//ruDnIwMOBEl9T2MZ0bQxsU2RzvsHpf
	tn+f/4e2aIlN+arK5qjqKwZLlmClwTcQaekhEpqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f5a21c7-84e5f74a-1831-482c-9133-0d1c0a28bbfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de31f715e1bd79394dcaa40bd6e4d0a96795e1482a86993c2d88aeb56aa96944
Date: Sun, 24 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658651812
