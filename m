Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5E12F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647197184;
	h=To:Subject:From:Message-Id:Date;
	bh=79Xx1DT95ojbL6axxWtEIkcrjVKbsG/613lzQCWOgbg=;
	b=RoxNt0v/nt7XpGJQMC1gCCYu5qca3QXtDRkGiMP57wHXqT6ot97fHc2oqiqnlfui
	KQrsZB54WzHMF8VHao7iwNHl2TdEQ2SbwwOGK2NGL9TX2MGKzkQ4W1nRWsZqzaXhnwJ
	MKsHh8MS1XoJ6MXgD5RFDYhiSwUXFkeYaT1rkfRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647197184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=79Xx1DT95ojbL6axxWtEIkcrjVKbsG/613lzQCWOgbg=;
	b=Al8MqQxrI0XXbMStdIOe41uCWacX6PAjpa+ehnzqE22vcJExPEAv+DFkEoSnWsil
	wEOoGcu5zXOqefrGElON7WaExiy+c9z6kpMCwOJeghxDU7xdzYqnYlbLeKdGzylPSZH
	r/gA5Qy9TvwDxSG0BX+wSKxIdrfYwtnCW9yMESIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f849a6309-dfc8b563-4bfc-4df7-9853-dc48caa93374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 239e6e2af6a1122e8e53a41c2c8cc3a46b14a78c1becf84e2fdd66fcdaf2ed55
Date: Sun, 13 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647197184
