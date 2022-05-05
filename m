Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79785625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651744678;
	h=To:Subject:From:Message-Id:Date;
	bh=Gdg97QFKVM17qyWn3L8vcMJxPIjxOsxsC+qF4d/ncN8=;
	b=TziDXXFK0UHQgyccbyNgUHhdCiYCjkJhhZLSsmdP7MSw2eImniC4yh2GB4KY9vDI
	B6HsxO/xLX+EaKFXnDMcLlFXN2Ul22lPqzRnT0JUQkP6Xy4b/gOmihbrHGs+Ktqe6FZ
	2ujp1FEdTuikMvrhjD3na2Z+d26RF4MqLPRbNIA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651744678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gdg97QFKVM17qyWn3L8vcMJxPIjxOsxsC+qF4d/ncN8=;
	b=jj24X/JmvJF9ohTAlNrQAaAqdVUWeEEy9SGL0iCP5+7BPPV7ZpkcbiMkL5255rkw
	P2vK2DFbZ/gkykh37nOPL//waVPGq8ZUJx4K0YPf4szaP+uxW3vjrBiWiuHb4aVA1Wv
	SWgPq7Whk5LABkqNpBOlfn5soUrCI+EQ+C/sMmso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093a7a18b-86c4acb4-f7e0-4b64-82fc-e19bf6f1456c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba5c2113cd961cb4bf67476ecfef78bc937b685de924f0688ba71bb6e89e80b
Date: Thu, 5 May 2022 09:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651744678
