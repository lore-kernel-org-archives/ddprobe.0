Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070491FC6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649778718;
	h=To:Subject:From:Message-Id:Date;
	bh=0E/D5kIN8Ybh1fjH2PmPZLPoVqRFb889IiObVmQLBoI=;
	b=C6szQmOOvwRjMCojJtF4ZqnlCY3wrppsNtWJ4yyDN822FTtDcxx5pND23ydBYaVr
	Kxhk437zgo+fGTLHRWVV4c9p7dMNOYad0CQEMn9+CIDw/huwBkmf5CjtZFjCv/d4z/7
	qoPCtSJUGWc/VG82FggbIo36vfYyHSC0ufgElaTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649778718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0E/D5kIN8Ybh1fjH2PmPZLPoVqRFb889IiObVmQLBoI=;
	b=I53d7oBPE1KCDRjpBMpB8qUruIQVw8L8deA16GJ19c3rBHppeI56Pnq63jh4tY5o
	AArlcWpdsxNBGUd1UI6aZnIWZycNaVrgjkNC2YA1wDSVWl/rufr2cV14w9PZ7VCNqwb
	Ay1Ks2Hv59RnxvffyI/T5dDr+Pjhw6+opnORkxJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e797648-57d6016b-0911-4792-8133-3dcb040141c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06d574908b87b43b0fb64e5409df95f60e9a3871b7f1f55f4e9c3b09d17b63d4
Date: Tue, 12 Apr 2022 15:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649778718
