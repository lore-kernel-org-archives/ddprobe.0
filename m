Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA2036D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 02:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653274619;
	h=To:Subject:From:Message-Id:Date;
	bh=SKQfxVLDC0gklqYFkIr2Lla0oTbQWMZCwbXH4vn/FRI=;
	b=exs640OmDJQ5GnXnB9baYlghPlh9EVHvqycbU4vkAOVUfjvedEs4S4Ik9nQdxrjc
	uC8AaCsqiWxelrrPVPBKf3CU2xs9Mk0neMLChH58hzp885VcjBnJPN82BJspF8k+xQw
	2XjQHPPJGb6xbymYZ0im2KhyOZvrfYpLDyoMWkcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653274619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SKQfxVLDC0gklqYFkIr2Lla0oTbQWMZCwbXH4vn/FRI=;
	b=U4HrR4YmCkplc62wM305nFqynIgP/VbRK6DftremCqO7o9uj8LiMyi8/vkKDzVur
	Nif3y3MDVY5K0p5KSgXb/c/IxCYp+8UAKSx0nnhYiQfpU7XAfcTHQulBmsTFFXlWzJw
	QeGoLg+m+f/Z3Exc3k5jDiSu4B11M4yR92vACH9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eed8ada6-1c370a1f-09ec-427f-aa9f-69947586007d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52bbafcd16d435ef39d3f8ec62d252d4181e3b3798c24f87d788a76beec7e503
Date: Mon, 23 May 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653274619
