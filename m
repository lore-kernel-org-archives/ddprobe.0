Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA307E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646317885;
	h=To:Subject:From:Message-Id:Date;
	bh=o/KYwjsbQy59sDnresEPv8MzRUa0B/s+XSC/wys6jRk=;
	b=XxuSaWbcDfxDYGhUUfNN9jTf37bOkfaTIz7xZJSlpFJsGzYqpX5Gal50it20OQnZ
	ZwQNdPhXkUaj2p1zjxAqdmvZKZP2SrAnxxEkPVhDT9QRIM4P/AKCIe/jDlBY1HpZwBf
	zvjOEZ/YkgQwvT+2UWPeCkUe/BReoHblhSGin5AQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646317885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/KYwjsbQy59sDnresEPv8MzRUa0B/s+XSC/wys6jRk=;
	b=N8g4OUDNUqdKMGbX+FAWMLObYd33VZMGOrVeqkpQS7RNn3AlQrQSJU48+9fbCIV9
	qcDu704OSz3kBRgHObCWXchCdrkojX6w62z2JCIPeVSY1JFT3Jze0AkdN1NY5oO/jVJ
	M14/OAjZFYt5QqS/nwUkh8HO7BWsOOLEX5RxGOGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50315536-c1a2a352-2bea-4198-b413-688cf31f7f7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 400af816d7e4b5e83bc429cc65be9cf727cc968b6c1cc5812bc66865b250d1ef
Date: Thu, 3 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646317884
