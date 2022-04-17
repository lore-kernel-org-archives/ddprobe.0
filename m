Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F602639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 13:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650203578;
	h=To:Subject:From:Message-Id:Date;
	bh=LB2wcy0CGwmE9e18D871mngsMHrxBzNJ7SUlsfXOlLA=;
	b=GIbJfRBTQLemIEvJeOUT57hLDDeyMLnz23ZVE0HqifBDwa4k+Tmqq1Et1cRDV1Kt
	/ZMeWsYZoZM9S+gZ1gmH41tPFFJlCniZtgV6r0EEYDTAW3BLfIV46VfLgkglsfGsukK
	lM2BEx08iNlNAtiupFvFuBdlZUTk1lupNH2Mrk0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650203578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LB2wcy0CGwmE9e18D871mngsMHrxBzNJ7SUlsfXOlLA=;
	b=TU9YRw+uyLnlI5iHndbyLVySjxqUIiNGKIWCNfHWa55pzah6IrTHtYBJUUTp/hxL
	XpTNKe3z3OmDI834Wnsx6VLkL7ORtiv6M0NcPP+bzUVEy+pQJGm6LSgpa2NNZEcqwyM
	GP+hsdRgbmV0oS++uRbdEwPWq/JXU3xs+xSrm8wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037cc4fae-76c3ccea-b1d0-42fa-8d46-eb5aea1e27dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccbbfe5ac21e21eebe4b6f1d4d54ff70c9ee134b3363019b4007b72f3def7dbc
Date: Sun, 17 Apr 2022 13:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650203578
