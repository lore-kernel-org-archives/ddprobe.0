Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B45323A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647351684;
	h=To:Subject:From:Message-Id:Date;
	bh=eXDbDvckTDmPo6GaXATCfnzdRZ+YTsfGK0FZV7QxrjE=;
	b=Ps5SzBvd97jTYN7ZvyBkJ/leekGbFH750NlQcADVjq95A7l6K3EuRVdqp18Onptx
	9VegKZJRnu9yTUhyUaHraFUJiNrgFhf0S7ZBh1uN2A8SYucUuTsP51bJ2lr/swBCV7j
	ztRUKAbN9lmUoL+WvwZRSvP5zMGszdPVBXh14BGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647351684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eXDbDvckTDmPo6GaXATCfnzdRZ+YTsfGK0FZV7QxrjE=;
	b=k5Ijq5h+EvLD6EG7ZdfQm+gUR9CGGNDnKkkoGXb6y/aku9REzDEYUz1T0LoHQ8Zr
	JojwKXHIZa6MX/x6COAdQAHRpcgmtuTIrysQh8zXBdKyzwkOpCXh7IkeR0xIq+GhuBg
	c+mEU2fHCal0KYA12Dd3PKHQG0ITtX2VdqS0AEH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8dcfde7f-d9a3710d-6358-41c3-84ac-bb06b9c2d35a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b2d05891dc1463a2b54523e6a562c8f28699c4fc5b40043f4cd4f69c33bb2a3
Date: Tue, 15 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647351684
