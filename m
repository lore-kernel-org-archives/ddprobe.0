Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E595A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646947284;
	h=To:Subject:From:Message-Id:Date;
	bh=LXfib7lwpgUSPj5AXGrXxq9fdK7/TFkcw3NNeQQDsxk=;
	b=gRNFsh7w3+JbcJyrlp4K3z3O/4bxTHJUvdzlHnGeN4wy8+ycrTqr62UG4DPTmKt0
	RtPzGPkB7qVJEyHlWouTvFx6u0fMymQ7YiwZOsSMZ91J5q/As0xFygCGF/5NKhP0HwW
	AR/7vSzMtI2k6AsqIBJP73uNgPGXuCAn3kWGzx0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646947284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXfib7lwpgUSPj5AXGrXxq9fdK7/TFkcw3NNeQQDsxk=;
	b=Lkd3eDvMcHCGWoyAj3NVS2ZHJ8yv5/dIrtn7sjug24WUVSeeSVjpHVYdFZHTBHTQ
	tSo1rkV7+bCgX5tLLclCtPj+GzLHKMBWMjhg9tEXiWMZYt1lZZwtnjtcd4cgu3+y/Bv
	KDyKej/MuPEBxeUiadMPeHhBGprIxs6HPafsV/Z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75b53723-0ba0589e-042a-481e-9466-b790a5267ee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf17d6334d900ec664f16b39e55b9918b5852c8a7a302db98a2e4a076ba49b9c
Date: Thu, 10 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646947284
