Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A9D7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645837885;
	h=To:Subject:From:Message-Id:Date;
	bh=WYiWTReselSIb5A0tF+exfZYyJC6MCgZbEXIJEcO2RY=;
	b=JXX3NqkMQprModvbLfO+6sE55ZO11sehWk4GHee8gV6yRjtQIN/beo6z5Yb/76Yy
	ttQWvR4OUv354ChSi2/IFPaG3WRiWt6M03NopViiZXZ+bnT7+rRWunA9phz1KQDif1F
	OmejSU6+Nt+Pdw+WSBWx3w9Plkjr5RbvAHODc+8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645837885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYiWTReselSIb5A0tF+exfZYyJC6MCgZbEXIJEcO2RY=;
	b=DqTNHS0Wr/IqoGtHyaRSfspPo4PA0+iWmMPJ8f+12Odfez+JQmPDVjmHw0EnXtEL
	CXEP1aSySpAH/9IFa0HA82ejbEeDuFD+erfRjftKjN5HyazWnkpp9gJBW9LMWTmJC08
	zugBIKZbAghFm1ZUuC76Ixu38Kij8nd2nxN6vT3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33951d5d-29e7c1b5-fceb-4fa6-8c21-342a84d5f5d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab43c5fb7ffb58a13aa4429272f172768e199501d992930995d8d93b08941e0f
Date: Sat, 26 Feb 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645837884
