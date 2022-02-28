Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5847C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646090185;
	h=To:Subject:From:Message-Id:Date;
	bh=rB5v0DRBWVNLElgEvMyjURO2WCS826Zc38EUEoecIPs=;
	b=VkcEzzmMlcSDEyNPHkVcHLRbyd476UK+QMDY00qLVxmy9StDedg4XLf2zYna50j1
	qaYCASe2kG9fDH56+fqIS5x5fX0+ws/lIUSiZQMW9CSHcbRDYW2UzzS0lSJkuri591x
	yxvqtr9DO9Fv8BzYJ7RUkMtf3bi+GNar9Na1N9Z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646090185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rB5v0DRBWVNLElgEvMyjURO2WCS826Zc38EUEoecIPs=;
	b=BPW5hwB//9GummwxeqBN2nDJ1fuM4IJxAG/6nlSXDHIgMMsN0Y8Jrush8437/ZYS
	474HxNrgTn/WMp32pd449kLfX7yLS/4+E5K1B/SHov4yD4C3Xd39BlGMfmktMNazv0/
	EZ5b9iQu7LK8snimgrJBafraMQyCFju8EcXKHu0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f429ee836-28a3fa69-e26a-4db0-9c68-c40a9eca7854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4717bf97a0d9be2fade4e0cfb50bceb24f9072729c60a280ec7f6cfb6c9f34b0
Date: Mon, 28 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646090184
