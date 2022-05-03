Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1ED15AB
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 03:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651548718;
	h=To:Subject:From:Message-Id:Date;
	bh=/u4oKtL6lOxIrqwZn/NJhQp3EOMViLTzxsk78ldEhmo=;
	b=OJ0TAdGkJ7+qJ5dehR6Qr/7PjWa6Gc2p/gH8Irutwlie5+Q+yyUIbVdwLdgzrSyV
	FWAKMRDth5dGJZJQnSxD9VfWcVbCP4QkIg9MTcKWLB+juED7lL5Iq8gG2Yxo6duzl8K
	EOm5yqAu3gI7B8xbseIhcwhmymTXaqFoAFC81NN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651548718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/u4oKtL6lOxIrqwZn/NJhQp3EOMViLTzxsk78ldEhmo=;
	b=BpQaL5gBqcUsgTUr+r4atzx4nd3irke/Rnj4sIP9zgOjwk9OeMJhWginTvxLM74j
	1ZY2IJOvMS9iPhms7fBuQ5eGNu8NDV8GRpI33Ho7DdTSSpy6v/XX0UW/IrJrHYl5kLB
	I0HpdlxDcx14DpPpnIhcapVbm72GohfOUJyRNcLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087f9848f-f2414a76-3d89-4f3a-a6c6-3e9c06fb2fff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eae2c0d8d10c28898ee2039f553563f3bb412c1fc503cd9ab9c1ec200cd7b5c
Date: Tue, 3 May 2022 03:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651548718
