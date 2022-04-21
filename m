Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADED4686
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 00:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650501838;
	h=To:Subject:From:Message-Id:Date;
	bh=CMFec2KXhLHFNH75OnQjBYmj2Dv0Go4LnzUd0vtzlLM=;
	b=d1xghdUEKZCpM5KQYt6cqYGXbZOM4OXuerXDFzGIZJ/B9Ou3x1/nyzPmIrXf2mJV
	yLQupmXBTYUERX+8opmQXWmA6qLRk2GwUFURzn7Mad+A2Fm9qUsxUeT7Cn30ZaKlJuQ
	9vzOx6Wluu5s3/vck+ORioA/6/MYiZhwxtECBoSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650501838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CMFec2KXhLHFNH75OnQjBYmj2Dv0Go4LnzUd0vtzlLM=;
	b=EQRgB7bH6hKqNJ2SWsGHXhkSeNKYtupshL3mmtujQjetof+xSQnrlz/uyWvcVI6v
	M5poeayTESGhZEM6mTL/XoEAL4gV1SO1aeSq0ufNpdSJyKFZEa/WhryffEXP8uRpZZ5
	jIosA57AC6EsCQ6Haxhrzp5vxiBmumyc2x/189IU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180499365d8-4e01fe00-a51a-4bc1-869b-a53c527b6e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 654d3117fcbd6892705e9e9292941584c1653bbd6304c5cf6faf2b02546064b1
Date: Thu, 21 Apr 2022 00:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650501838
