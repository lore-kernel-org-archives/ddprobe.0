Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A767F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655448959;
	h=To:Subject:From:Message-Id:Date;
	bh=8P4Jc3jy9YB5r6/AT+6ac5p+aw2CvxEUPu0fIDee3Uo=;
	b=lSemnZYpyAUoA/fmHf5vAFMRN8O+z/GTXAXD7oe1Z+ZeAkUAS0xLpuwTP+bYOOs7
	4QsA6QGP4/YhsSKgAFbAHHRQ9AIu/eW3dOIzrtF7rq1Wh5RL3o5BlWb5HxKMJw+3hNJ
	RQY2drFVXdex+AEAC5iHfNG7bE3QVM0J0AJhiwN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655448959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8P4Jc3jy9YB5r6/AT+6ac5p+aw2CvxEUPu0fIDee3Uo=;
	b=F7pG+k2Bs8z5bPKn8i6XY82RvkyZ2FoTJEugMo9xETabuzsIqrrIuGBuPdD/hLYx
	Jw4rLcHwMbVjCNe97PHJKnab8JF3bM0XLzvT3SZxO3y6BePNB/8jg73NSOgqKtFS4ta
	dS9EwJrURLI22nLi0Hv4/6IS4YNOnQLdaOoDFV4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181707278eb-4b6e728d-ff29-4a4e-b648-99c5159a8a62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55e0ff14aab314d1a04603b9c2166ed0994cb80e330d1e080f2d40b282778750
Date: Fri, 17 Jun 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655448958
