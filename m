Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBD3EA6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649605318;
	h=To:Subject:From:Message-Id:Date;
	bh=XzWCyA2VH9jqIG7Qfxz/QkcxrsQHY8wmM3GZHWI2d3Y=;
	b=eBugc6T90xXQnzgBmYdd/E5vfZi1EvoUjZnIAFgwAh/tGLIw/9SSidycW58i4fqR
	wJFEpiWG2WWgMMIjCEcBqODjIxIb43VhzzihWxq/V+eC/X8GBfV+ZV5XWqriLM8eoMl
	RksY5PR7wkPxo8JDSAie0ihRCHwspXqtzZwTIzxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649605318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XzWCyA2VH9jqIG7Qfxz/QkcxrsQHY8wmM3GZHWI2d3Y=;
	b=fdRuqjU4dPGU7rLTIXBljFKX8scC6SpdShVzjEZ0iAD9WYaMuiwrLuO3qeOtUVWD
	T3tynUK6lQwP6uojL1gzPjqIsuRlVAvuyfJXOT7hNKPyc15prLayc/Iu8WE1a+tJYFk
	EkDAV5jarz+B8EqhNRw7dm23IC+shkSMJewIQOos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801423967b-e2666ac1-1c7e-4ec7-8a66-e410b6b7b8d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd1bf157006df0a51dd67bc4c5294a062f3067624b6347874039a7a89a6012b
Date: Sun, 10 Apr 2022 15:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649605318
