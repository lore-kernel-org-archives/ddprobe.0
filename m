Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695521FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647334884;
	h=To:Subject:From:Message-Id:Date;
	bh=VtlXCD+k7f0WwJBNkXjbDH6M2VnnreM6aUmBG0VeA0E=;
	b=g7MtEopWzyYC12RWLdCBW8tqlpBnCXLDcMRX7tHPDJHTDfIEehL18XIV9yCrCguy
	ta5GcxLjCVqJF9vZZRsz9NaMhAlbFFgDtdGrydrXZol9SIaHOIDk+avCaGGjF7QMvfZ
	i8vkW4bFZwWf6zPZexQUdamcfsIE2I/5NyOItF+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647334884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VtlXCD+k7f0WwJBNkXjbDH6M2VnnreM6aUmBG0VeA0E=;
	b=MHjE4+cVNUdeToqvXKxsdDVhHPZtdAAzCqtx8aAnVpxisaYnXxHncfeZS+ls4A7M
	nbLDmnd1rlQ6MRtVGj/+qGjpZEQ2IALb447BQ0pACH48Fmaf2oq6uxoUHAVedww1IAe
	UpZ1r9aEeKRT1vudzBygE0Y0+2lbzux01mF4ABzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ccf85af-ea84ba74-4b4a-4aaa-af04-acaff9db8045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c630df65053cbeb19a4ef0cc3ec7ba64fea92fada2685d2bd751843e522c7971
Date: Tue, 15 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647334884
