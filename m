Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789A0C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645621585;
	h=To:Subject:From:Message-Id:Date;
	bh=yfmq0EJYSGSO1pcLn/VnfVzwhldSv1yvwpeVTUcdZko=;
	b=ASfSH33bRsLsyQyUNQyec9IFlXuDeHw3FllpO+ImuNRsMqZXDv2A+uy9pVSCefze
	5nyLqxkdY7T/kGUyFFc/RTHvC3SsCWG2nDrQpXAFa7l/C/YBY6vjF3/kxZz9jyDK2zx
	gwdxZBowSq3wKWdQh22erWqATkN+caIx0DrO+Mao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645621585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yfmq0EJYSGSO1pcLn/VnfVzwhldSv1yvwpeVTUcdZko=;
	b=QEdNUx1Lj2+FxcYErPAwxPp4FKUDmGPGS778CWO71Em8JLz2cBme26zFglRI3Avy
	Rf7sQnNRNgDvctGSfb9ZlgkeCJkemxNp2Wbd6fMTQoW8rVrbK2jEpRnFkSpMvuyFebV
	aO+d4f1/p2Dn3Dxrs9UozE/xcllpnH/JfBLKyJo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26b0a380-01ccf9ec-43af-49e5-9cb5-850b4425b3bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ed88f0e4473cfe8c3d8336aa079830b98ae4d89d6e6a423efc76933949fd12c
Date: Wed, 23 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645621584
