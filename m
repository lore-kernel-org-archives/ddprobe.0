Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F92C7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645668385;
	h=To:Subject:From:Message-Id:Date;
	bh=m1Xf92plcSCgWBw4Ujp2HKNMrjAsBpWO3fv4iRjXGRk=;
	b=KYMnrPXO2xhrMDd31luf0GoCPN3ly7JQBHwKurb0/iFAqCI66ELx3UgZRurk8ke3
	z74oTrFtGAf5o07+2NUEzkt4yg0vsXEmu6bnCSDr/EwzO21YXb7RcHSKcpI5BRmYDon
	EKMYhiP9REetmJt6Map5JjN5/EHpEtb9wjA00D78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645668385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m1Xf92plcSCgWBw4Ujp2HKNMrjAsBpWO3fv4iRjXGRk=;
	b=cR7+crAGLWvmteHhihPumKV6bIl29Hf6uyMRmdLSzmhUR4iW2aGo1X9co6LT/QvW
	UW79BMhw/bFDwQsFdwXInAU/44ekxswMC/ptdQnM2LyKunBTJOUJseGM31dtHBsMCyj
	PEj+nj/ytdH8Ucc0pnVtqyIOllVs5vn47oEbawTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f297ac005-333adefa-6394-4106-89f0-5135ee803d23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fff57314d868cc7103733bdd010cdb14e25f615104a3851e18044518e6e28fb
Date: Thu, 24 Feb 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645668384
