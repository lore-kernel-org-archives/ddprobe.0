Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18473EC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656631012;
	h=To:Subject:From:Message-Id:Date;
	bh=TEs/u7tge7ubG0Qan9I0E0xqtvl5SyVz+57W5WJ+iKo=;
	b=iwzKJOtyA046J2kd5gKoAUIb6/U9TxbjrlwSniYwxCsJ9euMrS4dteFI6hL8OrQD
	m8mBQP49hsPtazAikD8+g2tRim62Io7hU8RLy9C7YFBJO5VDOOSM4syG1E7fpNCd//G
	40nDEuAOWbarUm3YGui3s1BnicUyRDm6hL+JK41c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656631012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TEs/u7tge7ubG0Qan9I0E0xqtvl5SyVz+57W5WJ+iKo=;
	b=kU6/Vx+m92KNNsCQTwnSeGQgyNY9p2KDW7Lhzm650KbPnRW0LlwRwUQG8bRmirxy
	/Mv5W/DYKcLo70P6FTUU8KeKTlJ+0YsGy1V37ccXskestsRnVsITs49o7oJ1Xx5gGyb
	svIEmyIXTaeg6OwNQacMrKhHl1RhroG+QcQLCaAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6e72bfd-b7cb4122-88e1-4d55-8a20-5272b8275ab6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec0a68ec7d5505112ecdb2e8d6786ef6dd90776078e329d05b581b985a1c066a
Date: Thu, 30 Jun 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656631012
