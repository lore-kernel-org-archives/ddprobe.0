Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EC8646
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661080852;
	h=To:Subject:From:Message-Id:Date;
	bh=pczjqElc2CtUV5VIkENkwRr5nvnIhVivn0Bg1xSLsik=;
	b=MqFMiMjf/uAq5EHoEYyK3y+BMj001TMzPyFCZ+y7275YLibE/IfRkwBpPy49REho
	EeJXX2MGaLAjw5CT6nYfVBbv7EcLqEXs+dl3xkyJy3soCwveldp94wH9ZaHwFAh03Gl
	hj9XNHtZvahA6fP04g+t4EgMMB2PpIHuZcTZAOfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661080852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pczjqElc2CtUV5VIkENkwRr5nvnIhVivn0Bg1xSLsik=;
	b=NC465TWrbV7Ius6qVWfVDh+XzV1p8ufS0Ixe8yiRxYlJTLm6fdxlEJOPfljrgU1s
	raaydWeMdaqZr4mIOUEQRjjJCpLsGqPPTH9IRQiWWStjFZ7vva0gyz63Pa9NiDX3jSf
	U99tZQCMeVJl2VZd/n3Lxxd3ihWT8Dj/iUVNwmvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c022584e-7620a488-8d47-4165-a0aa-54b46d25f376-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2a6a810ed639cefdad3425778f30ff90182d0522ae56588aff660680659b9b
Date: Sun, 21 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661080852
