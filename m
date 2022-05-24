Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10048A21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653405359;
	h=To:Subject:From:Message-Id:Date;
	bh=d9KURLrd7F3sDqEKXQ9qJbuwRyswbnpUCS0x7BhCAQQ=;
	b=ANzcGjyrdCK87Nxai/607VZj1FIy8RLnnzHlH35rxQAM94Zjzad5obIl94j8iu2f
	s9u6IuTNZsunO8L3bo1Pw8jbhnynx+ubrOHkk4SqF94fnazdq13t2ynZgpONto72C+E
	4URFt2AQNN87R90OkOTEnobE5hCl7kurk6ga3kI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653405359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9KURLrd7F3sDqEKXQ9qJbuwRyswbnpUCS0x7BhCAQQ=;
	b=hIL5dJAdKaN70yEMS2KGjESpqcQ7FNiLwqqJpVoZASjlNNHK3l+Vb3ZVccrDtxxn
	RP1K+qWK1PuOk5/6ytOPfo9m4g3j3b3K5nzlk6Lw0S5KCF1NusMn2JkO3o4l/pThhz8
	G2YSnGZs2WmXMJ84Bw1MOQg/Vd3P4mZgOe2WkDuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6a39cbb-2ea1ef0c-bd06-4f80-b4ad-459390237830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 267dfc5b91fab0a8ff71543df3e1cea4c7a7ce5367913f15958ba6b8c51dbdeb
Date: Tue, 24 May 2022 15:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653405359
