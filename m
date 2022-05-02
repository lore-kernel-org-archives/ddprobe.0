Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688942F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 17:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651512958;
	h=To:Subject:From:Message-Id:Date;
	bh=zPWzwg7RIv2+c8NWesRwLjhlfaiTq2Tk7oDHZ6+eWD8=;
	b=QJcxf2Z2mKzK0vCU6hyzQrj/tb14jXmibnpLNWbgRRLadCAkRC+XstXLqRyNmJvX
	O9qshH2pX8vXZ6WzHB2rT0ZeTa15bo0DPUjf+TwxB2y1i2N4s1upNDK6fboJW1ZM9L7
	BnHm8lVOiQUxQp4Qp+Ds0Ns1YPo1MtDfGC/dGSGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651512958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zPWzwg7RIv2+c8NWesRwLjhlfaiTq2Tk7oDHZ6+eWD8=;
	b=JvJt0AGuYDDEflzHCrcl+qTYckWGXvkVB5lbPKs28Q9EhZf11VRhGrBvxaAF5Zvo
	g85KjMq6OSCYggxSG2PDeYRlhGpfBa+9ZahEXJN7uYew+wg/+Yx35jS7cOeZaLJCnKe
	Fg2ox/AqDbsqbP5/axB+93vhaevikLCzV6Lt6wxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085d7dd84-0cb96233-4f5c-4200-8a00-145f6d2b7bd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f147ec867913a6d4d7141f7520811912d636cd4e630734b3b59e741ea60ee257
Date: Mon, 2 May 2022 17:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651512958
