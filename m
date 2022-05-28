Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDAF28E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 15:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653751859;
	h=To:Subject:From:Message-Id:Date;
	bh=LICLbEICqFvPC6X1B4fgymtQJN6zP/KTljI71Mf40LU=;
	b=SljUfVHGRF04DTfC2e4tB/d44ehF/791ktQ4Jz8C4PPeAIzZOHq8mtwvnhyi9wx5
	+ah/NV4WI+C0z0JsOHSJ4tXuMw5FGPb5hTB+iGcjH2UhsNPso1gQH60IzWuxs5wn7zK
	E/30rLewA4kr3WHRmABUXKwu+ItovJUN7vyP7InI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653751859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LICLbEICqFvPC6X1B4fgymtQJN6zP/KTljI71Mf40LU=;
	b=OY1r85c5szWhR3a1t8o3UWw9RInedJgrritsO/nOW7Nph8jKQSArWH8aGSpUhtj7
	aeJYsU8DgL38xfANO5f24kA4WP2Dkxq0YIPvGXU5QGeU+6K6LZ/Idh8hTIqAS1uX0Oj
	nVcqA90GE6sTrV1t3KfLyAd/nFQbhbo6p2TwXUao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b4ac840-71df583d-627d-402c-a1b8-43417a3f10ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4b99652b3ddbe7597af10ae95c3dae55962de78689734e639b10cb06554f050
Date: Sat, 28 May 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653751859
