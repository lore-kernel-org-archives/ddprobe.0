Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65134A56
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645617384;
	h=To:Subject:From:Message-Id:Date;
	bh=MV0D2kgdYsJ+8+pKQcJXZd/zzJGX7hJLu0ewQlMAw0s=;
	b=OhOGuzbQEmZdNf3AK5WFg7qa1nQlPbGl8807N0vQrTWrqnqWNih6nC3Htkq6MXwG
	laM8q0XExvzRBuVBneYCSKDThLShVgfdeALkr4GCYXD87xL79sEzdEX7QmAN4BzgnF3
	ES0rOR6kdtKuG7rOClXTp88AhGipnOxCTqZZWXqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645617384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MV0D2kgdYsJ+8+pKQcJXZd/zzJGX7hJLu0ewQlMAw0s=;
	b=M+AUeKuWc+grXKdkx3U44yhVjohZIZ5qps88tuXzvO0p1LzOb/fDSv0B5pB1jCqE
	SAWUJUEh++d1bxzLYpBNgT4H1djVRuXZjqZ90jk9pbjG/r1eo9JYfuGTvOM6u/jlN8c
	n9rT6QQ8YoGM7gv4wTGDgiqJZOxRa4SjSnayOVag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26708d57-4139e9e4-a5f3-4f29-84c0-1dd294d119d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f39ecb17f6c90ccc8be086afac8e86ef67a4ad0c9343fd7c9437f092e6a8d275
Date: Wed, 23 Feb 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645617384
