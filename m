Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C117A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656472612;
	h=To:Subject:From:Message-Id:Date;
	bh=2zgwbYdxte5nTRaqg3K9E1GW9cRftEe36PG+hf2UQ/M=;
	b=QLMe4y8C4FQt3EcFVJB12IKyQzOzJFdayQ1NWgq73gc/UMJL884Dy+DrbxA0ruho
	8oSbiybLxXMIuiMPOh4MHyL8IaqkkbSS9tMhUdmLzTHEde9PFWyT/ZgG+MvNNaZOkvG
	FYUmqhfGDAhJC2o6WVG+BvSAM57iJcbU4zxyeswY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656472612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2zgwbYdxte5nTRaqg3K9E1GW9cRftEe36PG+hf2UQ/M=;
	b=kg2Tg/+IzVIuLlPTXF/heYdvzdxIWwjbC648YGkuiWA3he3ozhtjD54sKFjgcI7R
	NTuMtnkiCV5E3Jq4az5zFwt5xLqvvZG6ANcxVjcMb70B88oi1CDjvkubC2wGG2BBrrX
	eklXjS5wrmOLqlUGyv4iEY4TIsrtrw2uTNp1sbgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad762de7-4242538c-a76b-451c-9d27-466ece3b34af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c200edb5ed627a9136b9f7d23bb8bdb46a3c8e5d4b26cdb48b1b94b2c6c058e5
Date: Wed, 29 Jun 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656472612
