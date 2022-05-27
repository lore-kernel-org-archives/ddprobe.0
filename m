Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305B046BA
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653649559;
	h=To:Subject:From:Message-Id:Date;
	bh=Gho91oIjzf+o+leRnLJ0GnkZhrMXGQ2VpCj2TobCBwQ=;
	b=hXJPCSAogrZlX7lr9RfZabmGbmltR1Z0d6x9irdH4zUjXgqwHdh9yXpmYuzOOJ1a
	+ubkMguenL2FoJU2SA/uid5e2x/CNLnnmI4rzZRY05lTmObphr0+vWZVxx1zVn6BVNK
	5jAvlhxuMKelYST7QVsqaqgDQloPSWGfCsOTy2sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653649559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gho91oIjzf+o+leRnLJ0GnkZhrMXGQ2VpCj2TobCBwQ=;
	b=BQNWQOwIFQ1FAMnXsQy/nNz+gtiiy7lHLwKK8rFKqngAxZq9a+NSP8UJZXTf6i0O
	nqoesplzTwXOk/7mxAgTaJdoIrBQTJGCsjuYGUC5F/rnvxYebX7UOIHbe+8qSDxAPG0
	tU6IHNiWgiO/zng6kFU7D1YMaz3Kt0xyJFPWnHvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810531cee3-209354c0-05d3-473b-a5af-b48636760410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c847fb0f0f506dfd7f239d8d5801833238343d18c0ab0336a169b3c4a213e9
Date: Fri, 27 May 2022 11:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653649559
