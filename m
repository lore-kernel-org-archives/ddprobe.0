Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3C715A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658479012;
	h=To:Subject:From:Message-Id:Date;
	bh=flfm9aL0A324N3ZS2/gHHN7jHtwZtcNZIG9hbWZ35qg=;
	b=XD1J51VFxU1jbBL+CjGugWt0Re2h4Sz4Wg3Pb6g6p4QjpmijyiLa+0r492wPtaBt
	6kOxw1nlpjOXhQQuKeRyHTf30f2VWsYD1rXb9vMXR4oltgmxCdjW3WK4qKqPXTljIDe
	GFaHgl7jntGinaeVVKF/Udo8LMZftFpFYaQkNvo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658479012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=flfm9aL0A324N3ZS2/gHHN7jHtwZtcNZIG9hbWZ35qg=;
	b=R8r7+QKQ0D1M1A2/ibZsShxVdv1J/bpogVYF4akpy090zNO5hawK+LiZVEhJrRfL
	MNzt+CAZDzk9XFXRG3enDwv2a+UleaaJWZmBKoI68Xtpig8vRVzrcTRCk+hL9+6JLLy
	Hd2miPsej7zAaa8xiTSq+8JtPmKV0sfGgy/1N8Ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182250d69ac-4df9bf9f-84fc-4a1b-a37b-1f2899f647e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2085735c126fd48d345e330a4496efaac7caaabdb0cc320e5a831dd8b3af685
Date: Fri, 22 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658479012
