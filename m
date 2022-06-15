Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D127C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 04:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655267759;
	h=To:Subject:From:Message-Id:Date;
	bh=I3ZMme4bZz9ms+LAbDxXgv5e7Ugku7Y5EQZqrvHWutw=;
	b=Xqvt+tbcyMWxIQ35UFNx8/9nvyuMNwWQiNeiZrZoo/Hq7AsBycavWv/K8eaGk6xp
	k0ipZw9fYTz8zrdeGb3Oiry+3z/qZq6BzjWqe6l2zAb3IlfG2GzzoVj4Na1+Zrw8RmO
	JsvOdvokKoNxaTJB1bR9zMDGT8W6b4+AcRERR4Jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655267759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3ZMme4bZz9ms+LAbDxXgv5e7Ugku7Y5EQZqrvHWutw=;
	b=fkMP05QXUEUVQpiNxCvRi2XHOCcs1W6URkTbpD9kOeIGJ7NwiVFsoZUwhHFtPiN7
	z9XjmJL8Yk5Pb5okQfotswaOJfc6bx18/d1MQJ8LPVlwbnefk6fdWEptuuJE+GXndQ/
	lQSs0Se382C/xIS0iNZY1K+g9myeTh37aClBLAgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165a594a5-8c6f65a8-9375-4f93-aa21-8db21f9414b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5429c00d0273d2c2dddff7ac339076bea5d24d801e50fbf940dfed5fcaedd39
Date: Wed, 15 Jun 2022 04:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655267759
