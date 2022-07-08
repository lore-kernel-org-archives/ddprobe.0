Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EF47EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657265212;
	h=To:Subject:From:Message-Id:Date;
	bh=SsJh0Yo88OFx52iw6564pzQFUyX8t3GNFn18yGrUy/c=;
	b=K/ls09GV+AYEVUhofHzIOiF4T84KFCVrKm0IQekzlFU6iLiMtY+mvWw8rhVYtSQf
	LFVFK7k6f2YRJPMn7ds0msIs5HXxfFsxGH2c/KPWSETHwD5QHsOY3vG3x2sEY/4CkIC
	iWTOIMkBk02bu2QoejPSZhV6nHHvrIJUGzrJiZx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657265212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SsJh0Yo88OFx52iw6564pzQFUyX8t3GNFn18yGrUy/c=;
	b=VEasPGyIV5K6bOeFYKsOJrv33dHPWroUdZkhzzLwOF6sxWoeMtxhkcdBl+aod5qz
	EWz817TlOcnKoY1FrAemJ/3CoYZyPLIhrFXsjUlwA9mrFYWniaEXKjjj/WR1dYkvmJP
	VJ32bH6Uw2dX/Jn/L9yFmmmyozXp2IVVTwH8SYQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dcb44b94-e1a67b34-f740-4d34-988d-4ab8b426059b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55bc9541fddadd2ce285b48f73e8118adb6671c09f81fc5d1db8045ec8b080eb
Date: Fri, 8 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657265212
