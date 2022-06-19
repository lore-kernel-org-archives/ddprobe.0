Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E248C7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655663819;
	h=To:Subject:From:Message-Id:Date;
	bh=od0+lsAWs13qaiu5CpUPI4O/uQijJyTgBG+wje5RSL4=;
	b=LfmdPuXyng+SMOTY9E9v2oUyocgF0uuGqXP8GQvCv+lyw9SMNtvNp4EvFnCTvXyG
	g2gnzCXdJgQ2A9dLdctIsN95ERnhLpImWx/qvxIR+9BYyzGt7fb84JLnoDWmLBTpJcf
	+Unn4B8mws2qwQIJxF+AXA/3sMlSEo33BcfkAEx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655663819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=od0+lsAWs13qaiu5CpUPI4O/uQijJyTgBG+wje5RSL4=;
	b=j2rJg/w/6OJmluKkVxM3r89bqWBwY0t691JJ36Ond0SR0PQZXxHVZpgrE+0Fples
	aWP8T1ID5SD87pE5ZHcZ307KLd9ce8wBkBOqCrY2ebNdmUKCZ2phT1WUEELFTwnAbjg
	79OMzmOk6aNQPDV7BgTzu2xvZfEyKA/bSxL5EgnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d40f9d2-cf5f41ec-33aa-45a8-8612-a599ec6bd78a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbb393a53043d7eab20566db882a8c1978e48d6aba3a952404b8fb0664c3ede4
Date: Sun, 19 Jun 2022 18:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655663819
