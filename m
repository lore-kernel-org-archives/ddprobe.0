Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78B94C91
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657570013;
	h=To:Subject:From:Message-Id:Date;
	bh=SJPkn5pqaMKAiTDPyHFrkSoFDN7hWTSDCX+2QJ+Tj5U=;
	b=BBqh5+WF4f/E44TgBUv21pHL/sDHi463JrXGPmSzGlRRgLkKTfbLXRDGPtIH0KVC
	xKsWF524RQfOVFd+ORrC21bC4Uin1IxKrYnFZepsEKitP5EJqsd0z9ehCyiBUAQ2/oW
	EqwFdRExCWqA7G/lEaHKo/ZU3+XFmmyna8SvOxRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657570013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJPkn5pqaMKAiTDPyHFrkSoFDN7hWTSDCX+2QJ+Tj5U=;
	b=idOPK6wDr/JVfULJMYZJ99QiiAJ99/g3/QSz9zYjEsRTi5H+YiGU9UkDnwXO2ZMK
	zpP8idH3vgoPSa/0mciBbDFO5t4m61K51PxlXio/D+1rH5+6Knzn0DBMUb3l4QTRU3V
	CTb6W0grHKrEi0Ei472T9WqzM2CBoMQQcWAW3NHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eedf2c6d-ab0e2fd6-1395-4537-a162-021ef4105137-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ac9a1417fe90777015114a56d3c4053a3ad21ceff77ab59ef3c881d9b270977
Date: Mon, 11 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657570012
