Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41B7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661037052;
	h=To:Subject:From:Message-Id:Date;
	bh=6duBzugZusyk5qk9LckQjRIQHzQI6WM5A/ujj3IzU8I=;
	b=UCHQhMsac4l5k8UiwN4tE3uCwSjSEzf+Vu7XgrmMmng3d+qDWgqLQZ6x0chPWRRT
	hBCnhkwxfG5+zXjSRTqp7sgfpIpmXZes0VkH0tVVf1rIw+sFosujUbo+zSk+1oahvED
	QH16wai65fW2p09eQSwqTuJkVV8RpqtH/xQGnAxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661037052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6duBzugZusyk5qk9LckQjRIQHzQI6WM5A/ujj3IzU8I=;
	b=ZpSQsV14evtINtaA1WPr5uDtj4tTdh1fdIQP1YN7knajZBt1K9huYeVgmt+Z1ftd
	ur2kkEFK5UZn9cfzTu3oMpvD/25D/1zNeuB98CPgn/+f4ZT6+5aXRjE5ie6DOjhmMZ8
	KSxVBpeZz4F6E8oW/xcmXdIInu1o/Flv5q3LusNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd86028e-210552a1-d20e-4394-aa21-243aca0454e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7c9bce5176792a5ad09ff5e4460f720fe2174e2ded857781ba6d04ded1f6b5c
Date: Sat, 20 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661037052
