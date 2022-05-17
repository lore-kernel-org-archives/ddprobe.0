Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6741874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 21:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652823779;
	h=To:Subject:From:Message-Id:Date;
	bh=oWm2qcxJr3wR1/GCWxFuyIGnu6ZDiqH0qVyrY47kRFI=;
	b=RxgcmLe/4n2WHoiWQWDIZj+yHbVUXbBIsA66ti8NoBPc/GMKBzaiCruqdIX4vp/l
	51ci7Zb2Ea9XsGqPVaT0gYAaDTnOIGzGd2wWvuRn0fbghpr4Bwx6WFBfWTedPQp8sMH
	+sCdB3mcgMmw3vmr+Lc+efzW3qJj146FQXY4tmBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652823779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWm2qcxJr3wR1/GCWxFuyIGnu6ZDiqH0qVyrY47kRFI=;
	b=S0ddd7KlX3+XVbToMwbxn59GQnkszF0SRcc0fnVvWlTGDGZWzY0SOl0qC7sO3mrQ
	Ol+Gm8Wjv590c+mFl+AfuXnRUb8ZYl26aKuL6c9KGabXWSQHfTfrQGLi+fGhQRj+Sr4
	g1EI9SclQxBF5XLhJu6/DgRxrIVSb7QlS+waGTdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3f967d3-ee6a924b-3c1a-4263-aca4-cb3c8484280f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c98ae4d37f42a63b3f41d5aaee8b2ea638f66c4cb4200009b5c756bd14e8791c
Date: Tue, 17 May 2022 21:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652823779
