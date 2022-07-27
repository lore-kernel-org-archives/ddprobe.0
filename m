Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C947A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658962252;
	h=To:Subject:From:Message-Id:Date;
	bh=ddjpXkqt2ZjRPIxaAJkGzSn7qR7UKL2IlYNddjkHPTg=;
	b=HxfS+oKsPWVhGvaSQwIQv465ksWtkNNDhS+zqExJPZCu1H/Qtyqe/voo+5U7w5S8
	zvKk32EpsfBOTaHYY+nl8pf+dId7pjL8F26FOZAEFvZwiU76pggE/DGk7VvdaXrczkf
	hD5x+5d6aHJsS/3zexklE0Fk6+iWRGp6zYOhYq9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658962252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddjpXkqt2ZjRPIxaAJkGzSn7qR7UKL2IlYNddjkHPTg=;
	b=W3iA2jCQqH3Vf6VyX/AroeucIA0DPvs7R7hOnAiH24WhyFR4KJ75jEVph7w8TADc
	sY7NGHBHi1hA44HpPtGLM8tNnm08fzheU/KL/oUx1alAwKZxfJjIkK/wZFI8rGptP9w
	iyrTpA5rHHZWGVbKaWVBM9f37xmZWRNlevIqTIto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241db132e-a6a8165f-156e-47d0-898d-0ab5e8d97b04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d282ba077d8f0f826ff60789616a8aae60c5f39b6faae3ed3a5d16484c540df
Date: Wed, 27 Jul 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658962252
