Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0315320F5
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 06:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649313958;
	h=To:Subject:From:Message-Id:Date;
	bh=pWTOscfERrMNqn4pfbd7qVEcqfJ/QlRS5fOAkyJ4xEQ=;
	b=CAqTRbcOIupJWYnQC9LAMYkDWnbGPrjRkrjBsuj0UhE6+of696lLtYcOLLl8XwSo
	HiI/c6Wcbb6BM708UbxAhd26+0L/IpigjImmpQURL548FLV9jFJNq8VGL5Lire0QDYy
	C/snlhSNE1aKpxsy5j2r71WA3jwuTqwfxXcAPYgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649313958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pWTOscfERrMNqn4pfbd7qVEcqfJ/QlRS5fOAkyJ4xEQ=;
	b=jmeJ6waxSCKRpQswllDGQWKAei02GCVQsKvzdHRtd25GnfTMrSfw8ykQepj8CTOP
	7mTwX5toQqL4A3kXsFJmz83njgQyjjsCV3lMeHdG2TOewmEd83xJMcqTl+FaQuweNGY
	ncCpzun78L4wQQZRP3hqmWyvz5gqrC8IO3bqMtE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002c5c9ab-368c8937-d391-49ec-946f-86611d247d21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf259510774818ae559b1e1e4df056ef796911ee9b6f55c94f29c8f6e72f0aba
Date: Thu, 7 Apr 2022 06:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649313958
