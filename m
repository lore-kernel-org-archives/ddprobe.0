Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA9F7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 11:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650799918;
	h=To:Subject:From:Message-Id:Date;
	bh=+SKF8aygP3U9Vu3D5Epq4TZB6R7XQqBqf39nnfDqRMs=;
	b=KBK0c2sMFJBVnCa0LyIp80nsj3T4d1qS4H8Bb72SZtW3P5oGKSIGvm/+n8mQxBbl
	ANgGagJzGfy/U3G/CXzCu9yuiZMVtJmAWqdmSvPz0xRGN4SkhAcWzDgW78c6KSFfpxy
	zaN+g7Oz71tsmw9q246Grs+ZEsW5RcfE7o2yQOcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650799918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SKF8aygP3U9Vu3D5Epq4TZB6R7XQqBqf39nnfDqRMs=;
	b=SFxkm9N31JkAzUONs78KZvSxrwmpLP9tUjKuOUpOEuvNT1kb1mef8IYgj2t+jnki
	vHBoQs1NZrFajflD1y4l5GKYQ4iw5qBPFhzhTls/514XVagPTQwHg/yc3oqpdqoMVkn
	w2+L2bnuyH3lFPJr34+4Ae+ZMmCx8VU1ZnEDmeqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b57bce4-c0e1bc38-d232-4045-8661-ac528506d8f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7d78b503bdd54a04e97b10cfa6902c1160598f5420f3f9b20f8644f67f2327f
Date: Sun, 24 Apr 2022 11:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650799918
