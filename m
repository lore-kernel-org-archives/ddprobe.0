Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E4D46B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656950812;
	h=To:Subject:From:Message-Id:Date;
	bh=BHR4qIIh7nD3PJi8tvwihgRHDIkX3ZZiqKcJ6UN+gi0=;
	b=TE7E5GMtbZw6zQ0tGJQmRWucFuN9QlPxzzctKoena+SoDtH381pXDB2leK3DvA46
	S0RxS6ORMlQOv39pNeyTiX1nb8IOvCaAu4s5ZY/NbHYiEfZQFjlEigVeU88Pt8gIDzP
	CkArus0fbAKS+4bqVwib/yuVJhEkeMkx3tHZUcTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656950812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHR4qIIh7nD3PJi8tvwihgRHDIkX3ZZiqKcJ6UN+gi0=;
	b=F1s7fFngF+gZosppg8P1QsVGMC4WTObq6C7wSDVTVseKhz1gdU+w+2Q6MB8hAVOR
	sF8gnRdciFw1P6I90WIqpXvuf8eDyzONrE4a/qrfIFwsXQ1JZV30uqGm/k5PMecQmWE
	Pq36NDpJnfVxV0WbsVFXNx1X1lpBTGegcLz8C/hI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9f6ee7c-0e5b5b5c-a522-4c5e-8383-027dbed546a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c640c7cd486d51ac83eebc36ebb4ab1ee2953cd2e9ea1052d8cb30c557086b64
Date: Mon, 4 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656950812
