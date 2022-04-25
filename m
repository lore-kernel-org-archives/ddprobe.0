Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204222571
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650896038;
	h=To:Subject:From:Message-Id:Date;
	bh=8VlRntSv14v24eqQA6elmTuiw8hAQD6MCI4NNDn5g1g=;
	b=JSktxTbLIBBhO5pLAtfhn+VJMnhEJunWa6bkhjz0jYQ7YGNsSV3ewLqilBpCpCkA
	5oFhuCO1GhGbkv8QsVlxo4vjBgpUwHfS84ka9lz2R9/rtsyaTwcLnpxSDI9DGUvl35M
	z1FA50OvEVxTJMYaIpMjahplqIbAiM2F6IxQwJxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650896038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8VlRntSv14v24eqQA6elmTuiw8hAQD6MCI4NNDn5g1g=;
	b=cBwDkV3E5jnPi9PdRnYE6czVxRbtSV9lu8Fv8wA5zMjXSutkqUD6+dihWjChOogL
	pudvV008Eq/Mh2Y7dXabUXJKGmKp6tccFzQUtoiO5ZHR1OLRzpN+kX/vD0OwTH9y8jA
	swj+6/iDWDxhTO3qQVq6romEwC9xMMoY8k9jX4B4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180611269cf-afe7ae3e-de0f-40fa-9f22-112691b12d17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ace67c736bd0366f680c0fdbf5208c85483bdfd048298a2edef1e22326284b6
Date: Mon, 25 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650896038
