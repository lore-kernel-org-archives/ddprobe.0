Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E03610E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660970453;
	h=To:Subject:From:Message-Id:Date;
	bh=Eb6XyBkO4vAC8ik5nfA4txqibnKVLNp+xsvxjUCCzew=;
	b=ERxWL6QN8fUKz+M6+2tyuO76kwrRfSQsMntcczLN+DKbPEtgZxlzkrA1pra+pgVs
	H9kqpg+oPyHQK/j2Dln3cF2OmpQwvQ5hM2O3V43+F02kSFa7CIaZ1Ici+ba74sQHwy1
	CQsHCC3CaR5yKxhg4HMEEzn1zwoW5Ek+7qxX0DNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660970453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eb6XyBkO4vAC8ik5nfA4txqibnKVLNp+xsvxjUCCzew=;
	b=LAHvnulg3AVgoyqeFPffcZKgUqEvbLHqtU5E+Y4v7ixpqrphUxouxlpJiUftOwZ8
	XSC7pU/KUTaekF1bZL0Hz8YmkcO2z6wF6GTpaAhfpX9n+PpSueXVW0kIfoHHH8vB04v
	HEyo1qvnVhSYjalliQ9gQNSKZMxlJRo4QP3EuorA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b98dc655-646d249b-6968-4498-bf84-2ef65768ae4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af3a931833a1f0c06d4fc8a1ecd6b0b89bb8e98e0ac0ef541349479051b6d7c2
Date: Sat, 20 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660970452
