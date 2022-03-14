Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FC17A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647249984;
	h=To:Subject:From:Message-Id:Date;
	bh=YKlXELb9cesPZRAAfDWGpBx9RtJb0v1GHHjHfOPpfK0=;
	b=WWjVJhx8KRcmvXr0nNiuSwgoDhEp6WiwaxIkXlF8u2EL1oSeyT6kCbzvdSJH15dj
	j9CWdJMUNU9eDGq07eul73Ds8YBFwtEmItNE6iOM95+LnQZz7/CmfGsRvXAgUfBNu8j
	ghyRmKlt8kaw1BvfTciik5QVez/NuYwfsteV82ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647249984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKlXELb9cesPZRAAfDWGpBx9RtJb0v1GHHjHfOPpfK0=;
	b=VGjuY2/xhObbU7Vdq7HoIvkPyPYXpDOYGfZ8JdyYHJuwgUk1PTczsjVhMicLK1on
	wbqOncbstpEldiX1Y62patKY9ErUGq/A/s8dDyFlCfRpTzfMevQnA16e9eC2hRxq5Xp
	3FqEo66HceRoR1No7onvPv2V6aA4V37sr5KGlYRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87c00ceb-6bf97052-a60f-4b28-a897-98575fdb651e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b553c54c360610d2a0a5cbea8eb84d32e77c7f3c5c3fd15d4184c26f37144a7
Date: Mon, 14 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647249984
