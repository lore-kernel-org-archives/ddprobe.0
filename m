Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24567C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 08:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650701278;
	h=To:Subject:From:Message-Id:Date;
	bh=8dn7+LAfD95pkRGqaGJf5O8i/CRpk/qtCgFmORmG52U=;
	b=I9d6wAmNhz97LKDI43hh8msTsZoIocqewaIgvoGiX+iq63AnBIGVKFe1Mqj1SDuI
	auRaZhHV0C/CpOBv6fVtFpClkjG2X0NdczueVKFn2MUOkPYbC05sbwm0+bD+yRRzyOh
	hUjNUzWHVVmPlMgBSy93oJuW+UbN7GOcaHkB/qCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650701278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8dn7+LAfD95pkRGqaGJf5O8i/CRpk/qtCgFmORmG52U=;
	b=EegxQkkSb89tMfs0o5Yfhvo8ADIpd8NTP0I/uQvEwQwxwo5itEgUksjM8j5vbroO
	ow91ss51Xc7+j1Wl4l2/Iu8Yuu0jhw4eH/qv4MYyJe5BqG5aOT1u/JT1sHHSgvNrtZ7
	QILcgvoqC4n5cGQ/rUFQn0DvVqlR+F3FYyKXHc2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055769c3f-49d5acf3-90a8-4d8d-977a-bf4400e8d5d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28e58e681a6669d6123759e32e51840f145e865e9b386b34c352951d6c6d4f90
Date: Sat, 23 Apr 2022 08:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650701278
