Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171D22917
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 16:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653843299;
	h=To:Subject:From:Message-Id:Date;
	bh=PQNVdP+tf/pPIm+fxErZrZsCYisr6X+S8xnMYPm309U=;
	b=BHl2F1Ux25m9sTwj4+HieLp3T8kPnPBD0dYsJTqJOAMEDoxiPEFx6FFR7Oyrc/L6
	DMGI4POYBHHp0lYL1t+lbhjcb/NjKWuTwOwNESNYgfAeH4n7/bavXiQe1KAsLZ0Nzn6
	3LnpiLZqQc/yj5IoxojNqJxlmkmfVEu59WZ7rmWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653843299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PQNVdP+tf/pPIm+fxErZrZsCYisr6X+S8xnMYPm309U=;
	b=kndA2ZYlM2yc10+k+pHOaiIMYsi6fiwj9OCaxqqFwimNdAbcL6x4G9EOMGYVAPzJ
	6+o+bp5rD2E5DnZ65BmbHL3hG8wDkci9LsmmBM5N+YzPY+qbHH1cixbmRAid4B3e0wb
	/hli5B0TuXlStwuHz1YUkoxi4EBOS3xdWXT04TEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110be0bd7-3d29e4b5-f1cf-4f84-873e-27ab2bd6a783-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20fb4629c6b41f2ff3879e8a217486d30c63d7759e9742606d4505f1951b0469
Date: Sun, 29 May 2022 16:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653843299
