Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA69210B
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 09:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653988979;
	h=To:Subject:From:Message-Id:Date;
	bh=VMLDVh52DafpCAMw7ibIFcQd4hgZBfEZ56mmkSvQoQY=;
	b=AQuiUHclgS5xytk+NLm0ScO6tqOdVzzhOzb7/ZM8BCt/RLogpsTWnT1QcM+U02V+
	oXh1EeL5aWhwtHTNghDvapSJIfC0GajkSiLEgQF4mG+sipCJqWVO7zEmi/Dw73ekXuN
	YaOQVmIvepdz+c/ecyLn8pwIzTFdHlkX19PKvh4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653988979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMLDVh52DafpCAMw7ibIFcQd4hgZBfEZ56mmkSvQoQY=;
	b=iB/xu3uSypVC9NMillImje7HTMW575MV+TVdiADWgs+niNfiFnRanWRmG0kqI5ES
	Bz5sdR459SJbMb7kfibSnc3bKPo6RBEEaMNCDPGztIASWp0SZrgbgYHDZlp6kwXHhXV
	vL1EGvF79Mpnc5rjIvqtLfKJ3F2xWy4H7gZN2+CY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181196cf273-14878152-809e-4932-acec-5f10edf28e7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cb8f01f58b07c5a28478122d8b41a70048beae7b7ce921322a672abc89bbcb1
Date: Tue, 31 May 2022 09:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653988979
