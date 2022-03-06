Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7177B7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646538984;
	h=To:Subject:From:Message-Id:Date;
	bh=e7z07KQ5amHVTv+u2CqesZUKvvIT4dkMZN3V4bQ2ZWg=;
	b=NnZi4tCd8GpcJLuQms0flHksyTCiGCpCmAr0h695F/qfkPwm4Y7Bk+y3FPWe/hxg
	t03XPhCns47iBsvDbzr8YLS/Z7/LgWpabSTnJzwCMofDu3pNPetwBgn4g9I/MwiCzgE
	SdwnMF2W+cpfHdFkTxVuuM92qj+W90Un4Fs8iXGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646538984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e7z07KQ5amHVTv+u2CqesZUKvvIT4dkMZN3V4bQ2ZWg=;
	b=fjXuDaRLKTSFffPQx8rXx+gmQ77M0WXbYfQt2kAo1tUEFYrvq7OeF6fbXiN0Lphr
	yGadBEs0oqZECDI/AXmp6HBS4DMP/Zof+aX6TkSvPIvx+gq1wDIOXZ/R1SdW4W98vXB
	/thzqdJaCAtQCnoIRouB8yT/EkSnltnDf2ffLq0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d5f0d58-6a6695e3-d46b-4ec9-ac6c-0b2a542b871b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83a693d684be9fc818113133a2fdd9aee586f83a3020c748238d584423d3a16
Date: Sun, 6 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646538984
