Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C6C173
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647734485;
	h=To:Subject:From:Message-Id:Date;
	bh=ZEHascL5a0HoEOGd4fQbslJD7FEjybDPEpSif9Dfwdw=;
	b=hgPcDoSecA1WnpgU8Bd8krEA1fZjj4bsIl1nnqEV+eY6heY8hFSmj591CCCToCT/
	uAlWJDXvtgl+rgNT2PrH/iv4/6GWZG2pz6kuIiYJYAwT+mmtnelc6cd8Fb0jkPdRFZc
	Bod76I2M8EjqTE9uwYkyfr0ZgEQUBh0nIVjwUlv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647734485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZEHascL5a0HoEOGd4fQbslJD7FEjybDPEpSif9Dfwdw=;
	b=csVON0+F0Be3WVDNuN9IvleS+wwPEkQaYmQj5s9TvnE3wwbZhspvdAuWZDTB29mp
	XK+BtNGg47F+kShfeaycrrh+VgL8gUeDRu4ANhNo3K1cOoJti7s47JPVo2PBRDwux9I
	/VDa+1zOjVjRgK3m+CbmFjlrWplUIHdJq5fwofHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4a0ef08-fb6ef176-eeee-4e1f-a099-412a5333935d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 442c51a1f637b0c9d02e6800dc11a94ef7f32bfc04d39b2d3c8f0a5aaba92ca0
Date: Sun, 20 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647734484
