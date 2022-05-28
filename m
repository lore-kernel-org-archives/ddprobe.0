Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6063FE5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 22:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653778139;
	h=To:Subject:From:Message-Id:Date;
	bh=2ptFpEJsnwsv7xqYxl2T7ucotLT6mQa9+0Y5slvA+38=;
	b=FcrufofatePoUi2mc6KUy1xfF5+c7McRuy5BHieoFLeqjIPjNdWv5cXtfiFxU72P
	5ksR86im9iYqNOunaSy3X5nmZQRbpFvhNcycuUPZWBR3x8UA/n4fyK7+hSqV51TyVLW
	UMFAmSzzFEcZ3yH+U/xKKicAIfQw7mWA+U8XyZhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653778139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ptFpEJsnwsv7xqYxl2T7ucotLT6mQa9+0Y5slvA+38=;
	b=jFpcS1BULoewHUhyiIWSahkVINPS+BrUww89C9x1AJKCRaZmvv21IqgOACl2hlDm
	lta6jYdnrV6hxH9NK8mifNaGCM6kuxhhtO2hTppzo640tukLHBJYFsZ3t32AYtvScpJ
	m96Cmvi3jOaxvij1WK8rJ9DYS36XO+FFMUn+elYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810cdbc873-0eb51e29-3270-4474-9ca6-1585e9ad8bee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e10f3ac2ec1fb61046e49796370312c488fdaf968b8a3357807c2887b93abe6
Date: Sat, 28 May 2022 22:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653778139
