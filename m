Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBD0367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646622384;
	h=To:Subject:From:Message-Id:Date;
	bh=Xs0XmNJCRRSAgb5XVg6WtHcYFFY+gsQmSgXXblKkumY=;
	b=VK73//H7oCpwMMN73/ORSeg4VlHj3ZH3jy+sm1QQCiF8XYwm7UPwEcY4Cw+fJWdq
	pKhw4yPpfywdXBtG2ZmWXcvZxHpAEn6lhj1kO+T98Hp/H6fuksAdfiP4aJ7bgoGVrAf
	QYN20d29HRTA6F3JXvLrZYdcZM1u28IZ/eEVDin4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646622384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xs0XmNJCRRSAgb5XVg6WtHcYFFY+gsQmSgXXblKkumY=;
	b=BGr+dF7BAWVZTub4mnhtSy9Hxv6XUD70q55bQZYRbYaRE3jvj9sJjCRZLYZW97wx
	q5gX3agxOLwn7witbXMTzUrbf//xt+lYnJZ9E6wcX1yr/fHy5yljZl61mCZ4SZdqOsg
	hTJvx2aK0HA2rcoPdihgl5JoZcN9zI2ZGb/qg4x8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6257a23c-c6e6eedc-75b4-4296-bb94-3830ff21d5c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d17ece9d5a13d7413d077b19125cbc7acc8209af4eccbc37569f4f9c81137460
Date: Mon, 7 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646622384
