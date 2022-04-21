Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD291840
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 03:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650510478;
	h=To:Subject:From:Message-Id:Date;
	bh=jR7r/3+KusfHfcl7xk5UZrQnBl3hostBiTpmaiUOvQQ=;
	b=WE6BAEiOo1zs3ygRSe5yRkYURYUSwWMVP8lhOlH6hWREwBHax8vbGt7+Gr3rY264
	MtVxtl1tGN0j3ScXTmedqrlyMnF4Xw73XTtufA02S8a0R1OxFp9Kyg25hXM83eh+5LY
	MZNJu8TrEvWlGmdBsJkMPmlonEXnCWSJa8AwgPt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650510478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jR7r/3+KusfHfcl7xk5UZrQnBl3hostBiTpmaiUOvQQ=;
	b=TZNTVTosyHIzXck5Cbrq6gKrqHNflBILLcfqw7TVPU8FpFKvY19CErGdkR328m7Y
	9Iz4np/75Y1GcxiyxinPfca6gePo32wZRMk4uvpeMFF0pJRxQcjHtgYrwFWq8b1r3au
	+oZYpXFHOREkBO3jXjSFrKUqpLzMJE++eIUV2KaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a173baf-d2a9a13c-3547-40b5-881d-0d454afa7bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b970c730da75eba2ba88750362bfc1bc63529af9ea6b66bdc11cfe9d1fb2a08c
Date: Thu, 21 Apr 2022 03:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650510478
