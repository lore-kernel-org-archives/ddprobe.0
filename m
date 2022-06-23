Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07C31840
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 01:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655948639;
	h=To:Subject:From:Message-Id:Date;
	bh=5w8wnZgN9XJqGdOU1EhZoDyHpF0aZzxHRxxY6VXm99Y=;
	b=Ho3p4XMhSv3tOaU2cke52nZBFKa5nRXQwADEE6g50pquvRVkenQbiZUH75YyhDTC
	S37SE3NOumlyL3hxjq7KCPZbNqP1YJOIBYqXLmURcK/Rpga0CbM+bH0PXFaEwkK4eil
	hSmewD/+62s8vfmUMxSarWOwqcC6DugAoS+tWcBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655948639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5w8wnZgN9XJqGdOU1EhZoDyHpF0aZzxHRxxY6VXm99Y=;
	b=Wjf96N4RyYV/lTtXsZqIqjMIGA82IJJO0WC1k5YQJ6X4zbdhUve7zxoaPKtiVyiz
	j4seaZVA8nE0M69F9WAHS4f0HP84aB6NdIZvLhFOcuX6kmQpNbo82ypXb7k/6u69ZDJ
	RU5CWZmE2tsUHxqi6k6jNE4TtqknDn8X3r33iR6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e3afc28-02a18cbb-02df-4aa4-ae9a-8000aab47b9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd0a5abd0d5ea53a2d6343f2c77bb111ad56e97b12c9bcfb704212610386fcb6
Date: Thu, 23 Jun 2022 01:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655948639
