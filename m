Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9869423CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647363685;
	h=To:Subject:From:Message-Id:Date;
	bh=2YE1aEtj27O5EzOk/OkRTvxSu7btFcko7ZeGbcTlt2I=;
	b=G2RiBW6aEKv5YoWqAmQno1Mu5XqzaD8rNOJKOEKvyrphhF+BdKQAWcOGp16npccy
	FirSSSpiNLgPcg2sHAT5e9eprQZKzw0T19d2UxqD65cWan/Bj8UgQgCVOabN48h2IuX
	ygDq+CoDjop0LKlNN/hbrwIdxX+luS1uuTi2Nnec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647363685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YE1aEtj27O5EzOk/OkRTvxSu7btFcko7ZeGbcTlt2I=;
	b=NxRp6vXwtiQK6faA1D1USHg0GdS/Sw3mJxkszgRdI26gcaXazKLIWey8EjDD855I
	VH5tAMVJmNqk4iSpUIbq2pxdpqujLU+hr7JY80h6BoVJOFheCVvGxyzP8r3SHuNj3vP
	0++XfQsze0z5leEZmC7lNHZpt9t2S3MLn8RQHnJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e86f9de-81f41144-7896-4ed1-88b9-31a6cb4fd07d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6829e99bf2dd32f5e60a5cbde2ffd22434bb03e8a1b73cfe5b13c5a732816e96
Date: Tue, 15 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647363684
