Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BFF2F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 21:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652216879;
	h=To:Subject:From:Message-Id:Date;
	bh=Xoocv0E0EaBR4KicjiBHYEpQJ1CB944fSd7T3xZE0FA=;
	b=cl6XP7bZJoDveKH4xC0z1sjz/7/fZjts0Nr61IppxdvJSZzxJcNQbsG+f4B+s7He
	/nbYjpConzta+WcNb7/mwKpzkpTnaJOswSY7VZ3nxCmkXmUurUnIsOP4/u6vbllq093
	r9mojV6302f9OaZptnBtkQZZ3t42I0liftqauPS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652216879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xoocv0E0EaBR4KicjiBHYEpQJ1CB944fSd7T3xZE0FA=;
	b=QYxWniOc7XgoNl3fN5ELDMRtpo9Edda6gybLNeHKVDVw2Vwtb+kfUr5FrXSWeT7s
	dDIMuxsRAKsbKhIs0Hq693TD94x3+6nvX1t2R3emG+Jr0855LppdvvydniKZ3irPKxA
	/KBWrkc1SobtCHVPb6w/UvxEnAPSb7DrREuRWf8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afccd8d0-9224dce6-c0b0-4204-a298-9417587c8ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d00ae19613722647a91eb29f1fc6fee0a67ddc5f462b5d34df1000adedf1f18e
Date: Tue, 10 May 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652216879
