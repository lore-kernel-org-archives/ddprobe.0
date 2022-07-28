Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE037A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659036052;
	h=To:Subject:From:Message-Id:Date;
	bh=SW0IdgUTYLk9an+RTjgCuFp3bPoJxgIKR3ceTtvLVrc=;
	b=e1K+paYeUzxEza2T+3nsEWwBnCgOAwdk9l466ffAiatlL/hH4i+ZCyhEiuGuWfYe
	1QbSWAHE29z6KNZtDr5aTJe7pWESFzFtUN0bqmDv3Kwl1MSHVLTf9Z8qwr6m9jXE9Bu
	3Ny418WIgRRyozsgaArzd+czw19tA3IRt9+YhjDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659036052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SW0IdgUTYLk9an+RTjgCuFp3bPoJxgIKR3ceTtvLVrc=;
	b=BQ1VDcHQq4qcHlABvvs9+JrAfLaIxABQf/FHQru3tqIQYxtrG7wKQOfw8IWUWX10
	JD/l8kzq9DnJZgpIvTGHSJ3L5GgFJ4PjV5arAfDnxUFUD9rLjtpX4+eYCGPjXAeZv4u
	FtKvYwVATP6s7U1nuh9oDbXJwaOEXI8KczH177AE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246412c3e-5ea77416-aa82-4a30-8f62-80a73283e5fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edcb4aebe6727806f8959e80670569333bf562d930dccf2af163d4903a35ef91
Date: Thu, 28 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659036052
