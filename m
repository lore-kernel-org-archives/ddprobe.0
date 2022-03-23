Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6020666C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648062684;
	h=To:Subject:From:Message-Id:Date;
	bh=THMbwTZu+KbX3YDE1J6qVuI2Pu/aX87dTKEe999GtD8=;
	b=fMPeeew5whQlsPABEV08+Bq5LHWx0nZbJwpw5qKwidgLao0e6mL2XRIM/onlFEOV
	Qiak28Kmh+gCnmKqdBbJrX88fzb3uH/TViPIvkVql8BmZ6qfWoLyafGotujIU2JLc2/
	zwS8WxLnQFU7uPvxJgc35dCtO8zx7SN+kK8syCSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648062684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THMbwTZu+KbX3YDE1J6qVuI2Pu/aX87dTKEe999GtD8=;
	b=TvDAQWazqcWL0vSoOJnodnN1VZgvh0JaQX8vZIAnr31MB3C2/zs1z7rEMK/YAAN5
	uJjkIhgJCf9bbMX1+RGfcCxU3C74oaoKlFr241YG00u5zB03vKV1EBRgdqk4lWHY6+0
	LjEjJWEOibsAiJ9OMMIfjKbFL7wKpUCPnFaWTCxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb830de71-3069ca1f-0b1a-427a-a0a8-e37fbc39b69f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2281b208df93e0193282446ddf390d83d5bd54a2845bf2e21d843ce859bd0dd2
Date: Wed, 23 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648062684
