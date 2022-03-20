Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F32B33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647786384;
	h=To:Subject:From:Message-Id:Date;
	bh=jSagdKtuOjn71PAi9kxDTAhR2Wkd4BpDxdcS1fxypsU=;
	b=QrKQL3rDaOBEdVes62EVkBmcYRFCKxdzV2VvHTxCqQJcDQhoNQ+5kUD5CCLQoFKA
	IHmr4mrkingUYvyDWzzNp451spPGKmGl6V0A7hB3AW/1Mb7XpCtuUqw8iQxHGDc0bdL
	YlvS85aZH1TTXMWwUGdx/VUUuVNwGSAC5OZF0Pik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647786384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSagdKtuOjn71PAi9kxDTAhR2Wkd4BpDxdcS1fxypsU=;
	b=Z1MF4QVH9xN1sDgVC0HYkvjhTEzLH53QTW6EyT7/DqqOQx/fXJlleLO46QLUhHTR
	923VQkFaBK1AfBEE1gk8slCMce1V4Lc1wLLRBPq1ZZxFGrOVwSaKsuyyQp8uoykgq2u
	4c5QptlCLNOMMHKKK2IAHr8W5kU1JKuqYN7jw948=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7b8dd7a-80ed3193-b8b9-4864-a86e-0357ebfa794c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd4b2f6eb5cdb990f6aa4837df83c4cebad0d2e644536ed40d56d649ea48caeb
Date: Sun, 20 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647786384
