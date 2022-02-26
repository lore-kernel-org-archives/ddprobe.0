Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6957C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645862185;
	h=To:Subject:From:Message-Id:Date;
	bh=MfocxRXyxGBzi5b5/RE3cbj8AGQftzDd6iOEJnK/vr4=;
	b=Mr4CKGkaA0AP8NcOX4K116spCRlMyqloUvag5Ac4iQM+sHPBnFbOLX8OJamNEyE7
	C8IJRJB6a+7i6xZJLI5GVfSrjGozp1daOYnTUmP1pZkRKhG6ytcs63spDi58v+DvgCN
	8FcUOFJJU04wPxxf0+WOeBXBrZlgWK2HjVJiotfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645862185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MfocxRXyxGBzi5b5/RE3cbj8AGQftzDd6iOEJnK/vr4=;
	b=ew3tdr4lzb7b4hl1QgH7ees0jzbPjIySHal7wpoMKfcypv9EFNkpcXPe9Xw78hrT
	iCQ22BvZkBxd+IXj2o4ZBS62xDuoozf7l1R4u52mJI5ONweQYx4ZDAS/dJi4ePc6JhU
	uRc0S8RmEwZGbN859jIpGdzkdwDNPnqqmE2sEqz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3507e750-f5bc85a4-b7f7-426d-9ed0-abbf75d54b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9574fff061f2cd866a76868f0e05e72ec3b40ef0fcca8e32bdb24db95e0e81c
Date: Sat, 26 Feb 2022 07:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645862184
