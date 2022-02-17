Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1FC3D84
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645099884;
	h=To:Subject:From:Message-Id:Date;
	bh=0h2NtcljXwxVBWLVAwzkQsKRfFQnApvidVsAaEaWXds=;
	b=VHPuc/nYHh5GzoXX1KABQBaWIDad2a0adPjgaz3KQ4PIhVj92N9kp1UZkf2v6BbX
	DAxg7FTRrFsOECRBX5HaaxAFmOKPglmNzJ+tg4VyYljaFoqXYsvHaZYboQs02qwHiyO
	wI3ZDzRFLJTo6cC+jXg2qA8VI6JPuftI282glDE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645099884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0h2NtcljXwxVBWLVAwzkQsKRfFQnApvidVsAaEaWXds=;
	b=KKKgs9QfWVwILGYhx98n/NiMqhzuhx8+VPAfbhNmXu7fx3XgIhN/XqXHNI/I4z90
	X7+Zmzjw5JbfsviuacORBBKBevAiJn9n9/R8NYsLjL8kpnrFe+ECCqrpPiIxGXdxBN6
	cXC3hv0XDNa/xdLl1Ec+nLCKixsQVBOD+mprK1Zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f079820de-3b6b6e6e-1be6-4421-8f38-d0ead5c4d9de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 924382ebe0041e7e280bb036d749597497756e68d01494d09e345fbaccd7de20
Date: Thu, 17 Feb 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645099884
