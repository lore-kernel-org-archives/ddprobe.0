Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29807A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647910285;
	h=To:Subject:From:Message-Id:Date;
	bh=BBViaSq7RoPFJfqOoRGC9lTzaKEO3p6WCUi6i1FPlU8=;
	b=RkN2gYQ94NNV6Op0i9KWm2qlBDenMv6iaEszbxja31ILOIUEyD8sXbrUn+6LuyFg
	f+RKSWbUgiNOK9uZt9YJa49Kzy+yCQxtw4F47w/UHBGNHi/SWkMqoVXgWBKmOpXy0K1
	keHRNX4d68SKEIR7+CtlUqsmKe+9/K8hDFQcxHYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647910285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BBViaSq7RoPFJfqOoRGC9lTzaKEO3p6WCUi6i1FPlU8=;
	b=YI9VRFNxf/0pyqcmf/Z+ijuJY4p1R3byltYSuEJRfACj1nFzOgHJPhO8mrnvi4RL
	vmG7cHLs0yHdMfq8Ftf+w/ltb/Z9Fwcw+/mkznIihnsFLhogJ3hlX4Jm7DUotNOsRhc
	Cl3tmO7JvbMlL6FdiSD1R/p6WcZMyNl7juFLZF4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf1b6db3-56d923b3-217c-4788-9575-2af056d3f626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5829ef5682382e4aff13c9ae65e995aad72544fac288d4665cd67b2c300097d9
Date: Tue, 22 Mar 2022 00:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647910284
