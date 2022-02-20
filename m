Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1005A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645350084;
	h=To:Subject:From:Message-Id:Date;
	bh=p3ZOjoKXHBUFlfsxXIZCXaXmr66WQlvmfxFM0ImwY88=;
	b=RDXYVbCZeGKXRO3MZTqBMFGX1Al2h4+wLloqXtdLpM7jkhIzXprObixpvKIfQq8J
	SB3/QGroeJWBNV3ZFama0N+A3FND7oEkM0zcDC8aySAzhslAeo2Zb9ugtYkOfUb+ykH
	e285UrtNjYOsceJ8AKrcQrxgrZ/V9ihtoViqMfHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645350084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3ZOjoKXHBUFlfsxXIZCXaXmr66WQlvmfxFM0ImwY88=;
	b=PSxTTD2DjTeivGIbvqvbp6zdpss5gVCVyaT34bOrHn8hNeAo346PP75cmvLH31CM
	u2pNNRYrKjxrH+JvcwbAb7ZM1/gcUzHuasGASFMvsvyNjZ1raa2eMDDFm/MR4oUxQHl
	/O9KPtbBcsgQrTmsG8+i5/B2ER6AQLcUOtcW+apA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1681e0bb-0d24e271-c785-4ceb-a1f6-59f43e4baf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07369ecdd7c3d13b6840aaf5678bd469a12c0059316a9b6249a9e572e1724932
Date: Sun, 20 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645350084
