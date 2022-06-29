Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E897EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656488212;
	h=To:Subject:From:Message-Id:Date;
	bh=SPcKkgmUW3/EWZ3JVdnolLDaLrlPAtNjLXWktV3OpnQ=;
	b=YxqWEGSSagthjsN5WtgN7j81cCz7HkO4onKfKCQ0HZufrcUF836EJh8Z7zGfWyoM
	Ba7zCJyb8C77X1E4LcwviJW5FuAsIU5EmlaCGcNnUqHJOvPPTVYdH/CigJ167O+z3RL
	FePnhLcczy97HPRUcS1QzYAMdIPWDb1MQbEJZ6Kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656488212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPcKkgmUW3/EWZ3JVdnolLDaLrlPAtNjLXWktV3OpnQ=;
	b=JF+QmdJ+F5AD0xGbMY5KuO2a/iY0duHn5LLVrFk3pSS3sj8DEnTkw83DXQ2c/04U
	fm+0wfUFXkUmp4oIjnZ7nm6wLtulK7cW31xQqrf/o5bgMPubzKBNqYLiEKV+mqf8Y7l
	sxtWdgWtfhB0ZDIWhDER/0PizpMwOKkwkweSYP48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae643758-b3c61a66-f7b0-41c6-ab00-c856e4c76fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37ca45689a2cacd4efaf6428e27300853664a373164dd796207f834d2e43bdaf
Date: Wed, 29 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656488212
