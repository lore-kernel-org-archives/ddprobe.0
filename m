Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5B21FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656005212;
	h=To:Subject:From:Message-Id:Date;
	bh=qlJnl52HUoKQj5siiVWGRlt+mUUmaKfZaAIVEFyHhE4=;
	b=QClka5bubp8RGf7e7+WAWn5iT+u9akjIJguhc9GR33xgf6qJ51VbvpA2eLexIsf6
	QvFr3M0a7RKaKk74epwzA56kK2Rh7n8Zpj7F4GKLol6Kc65tO6CwNc3G71s5d29x1zP
	xkzF0H5cicH3lWhhRjMPIp37o9bqDVmeHuKYXp68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656005212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qlJnl52HUoKQj5siiVWGRlt+mUUmaKfZaAIVEFyHhE4=;
	b=XA048RgbfzFRJZylMmeyefXbl5tYYnuBdCf65TNPWBMv6HNnQubz1aUdsRUVJHZG
	Grp6qaYeCc6TvREmh5lMyeYp8iYDxckN+2Lk/eEadmuwyrb5iIfQPdNGLx6COJr3LYM
	KT8fFl/bHq7Hr5AqF+NDdQYRGGbBavHdMfgzvvLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181919a3861-f99782c5-d613-4f48-b5f4-7ff5434faefc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3061d95c991255773c898aa3a626d0b34cbf70354e117436170bd08670d380ad
Date: Thu, 23 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656005212
