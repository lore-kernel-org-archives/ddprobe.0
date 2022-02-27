Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9732F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645953984;
	h=To:Subject:From:Message-Id:Date;
	bh=7ZJPsoqCg2jV0dpAEsQyGKi4Z1yUZLpierbwEVEm1ms=;
	b=AkKmaP7NxRWVLU5MtDnEsUp9kUwoFlsBvDo+JhyWQbF4n3V6lvUpn9zQeitZ8nVN
	KXBY4Q0Dlx+4CqjsvXU+s+yoqgeBa1vLQ8N+opuoTn3wfLGdfSFNgtlYOd+De50Govp
	ahkbhVq6FB7NTGL7qA0VRcwB3dDrerVrz2b7ancU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645953984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ZJPsoqCg2jV0dpAEsQyGKi4Z1yUZLpierbwEVEm1ms=;
	b=k9QHZD19uFN3cPAbVE2Yir2Ztin7eAEOnQ/G3TpK9qCH57u56PHdi0Iwi42QJjYg
	WhY8ja9WzexwQu3KHdddA6/CUNfVrAHjzOEanqPIXVbBeRj6AY82yuVUYUMAPbIp8za
	vQwO2arRTgZ8cnhkV2DhYX5EJdcZY5adPGWw5vu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a80a940-c82a99be-f774-463c-a3ee-0490e78212ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0773e26ff57915613273062b2bf132c165f268c8701bbeff9e0f337b8531156c
Date: Sun, 27 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645953984
