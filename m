Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2768628E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650627898;
	h=To:Subject:From:Message-Id:Date;
	bh=4Ls1qH3f++WFffqR6T7/yhSzShjhzEQEO37KAqqe02Y=;
	b=SJrXL2yWw3gBJlWAC65MZriBPORpPajhokwiGaSdUAT0cCZGeMBnfyOWR/dDMkSf
	r9A9aClEQ5qZ+zxSsQ9URxsUgv/mceeFEFXnw5lgqyhFtHKzsuTy4BjyZmBnGho9pjU
	6QSpfxXTw/wLSKrntbwoiIo/uePgwuJ5gQJboExw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650627898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Ls1qH3f++WFffqR6T7/yhSzShjhzEQEO37KAqqe02Y=;
	b=eVOrVH4HxJF17FsU+I/mmWs851gYrTkqyX5ZoDkEKrJCN13pzZP4w36Q91BTJZql
	ah6W3mkweXWHzVbrw8mKgKqRi1uc/Tp7dhFGNKB72tXVW3gg5kwAEYp3/cXb5FCddE3
	Be5MQBqSb8FaxrDVrJ6W64Zbt6berFikJs22W82A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805116eb7f-adb26a67-0801-4d18-97ae-9462aa83cee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74a0c84a8fb10a51bc06839d56498d6bfa08e8a1f4cb21112ce67367bdf25571
Date: Fri, 22 Apr 2022 11:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650627898
