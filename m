Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93265158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644944184;
	h=To:Subject:From:Message-Id:Date;
	bh=P7zqGqmazFScOwNkS7IzBdVL3Q3dyv0q57RVOzyFcgk=;
	b=iq7MzAUe1lzGvsxEE9uFV/AEug1eOKJ8A9buttbNbXSG73a0qfZQUEcuQd8NBk/u
	yheVQERrGZk/uplsi0L14bbWdYaBGoKtRYcbeaaJGCrlLLHNPI4lrc5KORxrzpHLm1t
	kuqrYoHb/HgXmr6IIQKtUyvYWUSHA/eZito3IRDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644944184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P7zqGqmazFScOwNkS7IzBdVL3Q3dyv0q57RVOzyFcgk=;
	b=F8e56pHX/WPC4StE5DWpTT1ZzIrr5FT1tiofX2QCAW5btVUrGlRTHQDp98bcbjm6
	k+zLhgxCw+dodIcSgzYFdHSxrjkOMd9tpce4Zmn4XjcnB5p0z09B7cMbFd/EQqecqgV
	kZoCSWAU+3fLCxhNo2tuJc/qbeBAZ0oLxlkcMIuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe5055c5-e18074ce-67a5-44ff-b6f7-c8a66735740e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07608c1fad7c3756eb8a3fbc835797347e9daf6893b4695f763e6e3359609926
Date: Tue, 15 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644944184
