Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3BA29
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660450852;
	h=To:Subject:From:Message-Id:Date;
	bh=gGX0JbWjcJ1siHrlM1Aqot9Rhggit1PuNYmlvIBw6lM=;
	b=NOptanhW68tm7XitL+EjhIW7BdUXtqcfZZB8JFERbHOhYp6ya4RPBn9pv5PLm/R5
	tuVhkIg+LhvPYn8vF/7vg2asANPC2I4QJ4bE82AJ0Mj90Zwqby8ifJEKiSoCnRsNr8q
	Z3URNWTJ5qYdyuvzw7PGZn5+d0tk0oMk7f2Ecgnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660450852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGX0JbWjcJ1siHrlM1Aqot9Rhggit1PuNYmlvIBw6lM=;
	b=DUUo8u9o7qs/TYvfXEkTCW96XOU29NLjV+9gAflGN//Cc9XEx+xG4r0kKWYCn6EM
	X0ZA/68iYTnd9fAic6pyrqDZTF8INqwHhIETpx4m3ZNlJ8zRNMJC1IfsVQFKtIMiHFU
	MHsu96xywoqgt028jzDjZY/MXGyAjtOEPBm9+Dfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a954ee0-e3cbb510-533c-4c37-b67a-aef053a3d705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe60cb3b8586985ac6abdbbcc24aca6739bccd89a8b0407e04300413fd06bec
Date: Sun, 14 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660450852
