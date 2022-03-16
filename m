Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC9838C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647440785;
	h=To:Subject:From:Message-Id:Date;
	bh=50Glq15tfZNp5+ziJAq5E1qNlsBcBRXbvc3CBzQJWso=;
	b=aAadD0FBGCCSb+cF422FLDVTSKPksSe9ZRGgAXpbCo8RD98D2eQc1Ku4qJS6PSic
	y4k/i8RW0vcohZESj1hEcAx/JesMWcqzxSoDX0NYVXvzt7ROGTvEb7B8lFOtsbp7+fI
	8CcIDexlHtTgKwFkmQOLsKCNiWcrpELkMjOSlJ58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647440785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=50Glq15tfZNp5+ziJAq5E1qNlsBcBRXbvc3CBzQJWso=;
	b=ZbF5vvVfu9Snh4pJJg23+O7YKtJnWzf/VyLPceZtbR/Hz3u8vzxYcD4arBLbEadO
	LDTmJE3QQ8LHwso9l2B8ZT/b9++wCs11TcAlaQIhh7bQQI4upjFn/jtgm00MDWjrpJ+
	tWajBLiDo0wMb8XPVhBRTmNg45bzUmA6OuwYp2Mk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f931f6db6-59aea25b-fb69-4b62-956c-5f0610fa37d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41f01dc135efb69ddf7f3e558da01c9b2c4866bccc2acdf76b25ec28850daed9
Date: Wed, 16 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647440784
