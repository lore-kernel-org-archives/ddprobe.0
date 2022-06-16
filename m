Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D377A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655362499;
	h=To:Subject:From:Message-Id:Date;
	bh=kJU7ifU0boY0EgW220f79QrFgKVetP8vX1EJu2QDeYI=;
	b=XziRcryhuJ57lgrcdXryL+R4yMhM4+ZXBVJNb8qu92YV8eSKlk+chZU7TjKoDdf6
	uIMwxnLk9f2ExAnr/7ll3OOQ7apzRvvTmUaaTeCfvDzxu22aMxkrvU0CtyqPAy+bP4W
	E4PFdSyu/BGzPz1ljEiYvr6dWFkHLp/1CmyFw4jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655362499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJU7ifU0boY0EgW220f79QrFgKVetP8vX1EJu2QDeYI=;
	b=VEDQNQcYZr1Pz/19SI7Hbx0fCRmY3SQEfwIxmVNmWXXfvAb3SNK4ykAP0qAhJP2O
	eQ4TUBHjR9SvPp1M0fKcMc9VVBgiGChA70nsy00Q9Gpz2AlOfIi2YcZvP3uuvqSL1EE
	28upaK3+JXWoWkHRilGsYSVosIuOqZNO1xXqgsWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b4b32c9-040ebca6-73d5-4e1a-b763-c850fc40121c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54d1b78139075accc7f3547af6f21f6860f77a76638113ac61c678f5ef9518dc
Date: Thu, 16 Jun 2022 06:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655362499
