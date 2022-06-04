Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7357A137E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654382099;
	h=To:Subject:From:Message-Id:Date;
	bh=YS2M9IOyrXnK9/x/VrJ5OFI4UHHdgKLSBqeOyrUGhp4=;
	b=Ix26vE5OKIsHVbIsNMZHTtqlzUiSvHfJ1GxaR/OPix89uX6md8FfCXKYp6NNxIBb
	F9YcDqQRUvWd5+XW2IxUd0LXQVXxSFOXuobXVvh6XNCcf5g/bbBLjPSc/c4TMrKTCT0
	2NkkR1XeJLvRtzzNoDgKRz9OWV63it2CF0NSkJI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654382099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YS2M9IOyrXnK9/x/VrJ5OFI4UHHdgKLSBqeOyrUGhp4=;
	b=LHmcnJLUjc3WZ79U8HBM1dqWNEmZgBcdpF+HeQbvYsvC6kXqXTPo6cnxzt2fFoYy
	gRE+L980lV62Wcq8OgUgPih8EuZe3jS02YxirpAdSdwoKGE4P3gzZs1J1UJJOOqBouU
	a6EU+n7u5HZUZRZvj974MJsFXkIqYQbgjtLAmBl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130db7b5b-0ba5c9ca-4edc-47e1-a80d-225864340ae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62e190eab2cbb6c8ea29a72afd718a119db5c24a140fa8790ce993b084389b2e
Date: Sat, 4 Jun 2022 22:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654382099
