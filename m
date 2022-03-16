Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CE42F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647447684;
	h=To:Subject:From:Message-Id:Date;
	bh=yXqepOiuxGt11ktNih2etiaeSOpyEdvSYwh8GwD5MUo=;
	b=Bc2v8kzIPDOo5KvhVvtU6XYkouEkdYf8jArVA+0DN/5vpCtXCiPlbU9QLhkdxYEd
	yMwXk4OlwBg7awYuhrROEZjq9Z8jkotuXlbqYoccjyoSAk7+IwYeMh5iIkvUKcxiV50
	pnDUOrTdsTdP7ipyuQZBR5AToVNeZWnaSP/LtaUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647447684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXqepOiuxGt11ktNih2etiaeSOpyEdvSYwh8GwD5MUo=;
	b=Vn/H8Dl+AVirKcnLu7SPAXnvjnmzBOGssGMeRf2UCuqfcJT3FIQ8/ecSI0+EGxOU
	pCYcg6dd+5M11wQGW7LDJezPMB7nvFT/z5LgQhDG1zUu05eFwdu1hhdFmVZudSj626b
	6vwARnMsslxxQ8VrSzNvzSBRaZNZC5s1y0Eq/MUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9388b6aa-1d2357bb-6871-46d9-a57d-dc88ce0d1f61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e782bad995f7090de7cd83a00189335fb3ccb4ca800733bddcf4717cf3392777
Date: Wed, 16 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647447684
