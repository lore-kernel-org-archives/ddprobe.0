Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEBB23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652176379;
	h=To:Subject:From:Message-Id:Date;
	bh=HNfNVD6XUr7hHgFwUrKzZi9o5JXjUrc2N+TQhWujK+0=;
	b=jgMutoHLRA23pLDGmgEh9L4Yt8Tw/TaCQKODEpgvmT8u6xBdZczKZqPHRyIYy5Yt
	C9Ezzzww/0sKfGE5zlOMrOxTDGwWSHvUP0PkB041v4/O/AJ6cjRwqWa7zV3uEeHDJgq
	sxS/RyuS/zU97xBSCoTc6PA0KXkwFrXPBt0OD7HQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652176379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HNfNVD6XUr7hHgFwUrKzZi9o5JXjUrc2N+TQhWujK+0=;
	b=SrcS9u0GQRjQY9b5VXlsua3WyJD1up6GOVGDfPQoGgPFNTqPG/VO6s69Sgm2YZkQ
	ChMpn71kyGbb2GFZIC8LoWJAsDSfxEx2278hHC4Rah/HF+mRg5RwYb2FIcXNhAEatTq
	MjII6uLVaIx7Yv7fJrx8vbHcDmPchTQcmBSLl6CA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad62ddc0-e05e4104-e31d-4fb0-993f-45be5655f39f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9087ad678aa070fec30dd9a28296c5b57f6e8c4dc2216e580b2903d44cf9ea84
Date: Tue, 10 May 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652176379
