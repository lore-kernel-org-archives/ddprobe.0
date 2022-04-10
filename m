Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3B8ED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 09:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649581318;
	h=To:Subject:From:Message-Id:Date;
	bh=g5XoMUlQ13Z1W6FBOTWC9vl0lY2SffeeJy5x00ziRHc=;
	b=lb6UAqNpweceJGm4qQUW0t+fcp8m7X98FB/rXMhR97Yb1Z6eDQkqredJUygKHVMW
	GTQ7Ay11s/Q1ScpMaPBYQyloU1ca07sjxYy2sbkEZC4NjJPc6gEtgG9stQQf3jUnY3d
	DN9PoNcUhhnJvj8YBLUxUSRpKMDyuZkSPLXcMeu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649581318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g5XoMUlQ13Z1W6FBOTWC9vl0lY2SffeeJy5x00ziRHc=;
	b=Rvsh1AEg6Uj40Ao687XPtyTx5N1/uvxRAMlhbE8nkSLwZli8uCCZEBfYs3ir9p2R
	dJWrJfOQ3Reo8KHFkaAsLvcWUCTvKeAOwbqGwyITcTCsZ2Lq15yfMUGMF94xJFlnMgj
	+ghDVBvEUL4IgD3vlTJMiS+GwXWmG4WvyHuTb2f0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012b5608e-da290fdf-0169-4288-a2df-ffdaeaf266e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24b2a85b3a5ebe7d284d876f73d1452c97ba6224175a9897fcf41f490eafe2d7
Date: Sun, 10 Apr 2022 09:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649581318
