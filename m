Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D28B48B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647601884;
	h=To:Subject:From:Message-Id:Date;
	bh=mKTvg5Gq1S0/Ui5K45ci6FomNa4k68q4QTJ9jY6kbZg=;
	b=aMxfdYot9d32Gul444opzQBKB6jInI0+RPFCMy5yGsPqug6OMInttVm6nsjQk8ax
	k99jAVCBx9EOjunJaPnwtnoIWigRyKFrvmTbEZIJ2GQju86EXKu4Km30npbM3KOyqkf
	+1lL0GRjOU/FTQm1Q/5cC0grC33EVmdFRrdATDpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647601884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mKTvg5Gq1S0/Ui5K45ci6FomNa4k68q4QTJ9jY6kbZg=;
	b=XBltgbACDTmB/yDwY4ahBDyKbbHcqVtsXxAOaoR0Fa1OLmE1Hgc/rVhVipn80P/d
	U/MyfoF5j6TnICGKqEq6E0JWQz/t7I8LMHq+IlRVpaQa9HtKON95GtiOMtPVl2KHA2L
	wXkshmFcINH8HE/UgXGe/2WspKBRFKYJxqjNDwyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cb99e56-d0161940-7863-45f0-ab31-ec67fbe42c54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12df25e006f6f8cc0ed2bbcd3af51c5a2d631f35a01dd17e50bf294967f4be8f
Date: Fri, 18 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647601884
