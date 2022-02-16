Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC81A1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644972685;
	h=To:Subject:From:Message-Id:Date;
	bh=wjAeNZM3MrxwxFA0Eea2a+PGtL44LX7biB1Zyn230nQ=;
	b=GwCW8u/3STbkQz2l58Q5tpTr4fpzTWYfsrsFtZ7zX/iGJmydICBr4EoL3MaP9dvJ
	IbNlsB3+/bI8YWA0Pj+UW31534bTSRnEo8CqNhdNMFCdOVPHUJ0kq1WFJS6tnhkFyfw
	lcz65M1S2Wnh8rrLaXKpgNXpUOt5x2FAZk3QWQzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644972685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjAeNZM3MrxwxFA0Eea2a+PGtL44LX7biB1Zyn230nQ=;
	b=XtTmJvQ2mHpRjIo813LJKZ92DH6G8lVpm7/uRIlDcL5wJXdgtmcPsmOGZq+RqZuy
	8zkDAqHTl8vOHBkrgCtNcp0p25LVLi8m+qrUJMrAxYxDZhCPex5cnsotoScrNfe3jSH
	eXfEhytB3JSZqVnm/MxubXEs17xqoYZY7id8TOJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f000335cc-a4013c38-3cd5-412e-9c75-dd1581e40868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca85efbcbac9bf3cb574df74f41b698b1a8f30ba6e526343cae85f3289d23dc7
Date: Wed, 16 Feb 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644972684
