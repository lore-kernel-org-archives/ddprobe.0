Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D0F33D9
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 18:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653245279;
	h=To:Subject:From:Message-Id:Date;
	bh=QJS1HqC3h4maJobNZZvYb0lfHvGtq2xjVgbhXcNlw+8=;
	b=Yo5NSuCfUJrN8gZyECXENDRf7o1nSvqdgAzi5JMYSVAraXxd0bdE8bFVWJnSTL7c
	rDP9tv5vwB04W/CXFt1qGo33v4jafM14bna0ivHTgFjrbxTPQYydmrffTAHAxWaQfKs
	HZMVsjuHzugfaB2pe9nHgQTk6Ch3nEJahRnjzrG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653245279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJS1HqC3h4maJobNZZvYb0lfHvGtq2xjVgbhXcNlw+8=;
	b=AEhmIdcClmTdf1Fmd3Qb4YE1FKvWs06dmLUK1XUDpk6BzvWxVCTchI0c0QhAAEmM
	HQgc5juuLnpbxSqTfe+FDeq2j7rCI5tQFWDF0CC+XeXsDwPuU+nJUmxSlEKH+LeQHHx
	Yos3J1bZxmGMv69X9Lxrgz1R4LzbGO48KDf+UDfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed18fc9b-934cdfa0-3de6-4ff6-986d-338b846545ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f6e933cafc65f3158f189d12d33c83fd3e938569518460d8ef36eb2097fe42c
Date: Sun, 22 May 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653245279
