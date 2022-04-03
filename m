Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111AB7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 22:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649026198;
	h=To:Subject:From:Message-Id:Date;
	bh=NJLGSMLU18Ry8S1Ruz5rtm2Lvc2KxlQ3V6lGqu7+0C0=;
	b=SQSNQScVpl1FQJeyLxBAvFXOyOvbfRYIzXuu1rAyVz4/qtQnxsoxBDJjTB9snlGW
	dhSNIMgOxaDj4a6hHwNQLF52k9TVLDFV5HuwhlMea2KgTfmW6Lplg02Md8JW/du45BM
	msrdbuFO63vHh1lOQZZjrmYdC1Qg3/kqW+vo3vG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649026198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJLGSMLU18Ry8S1Ruz5rtm2Lvc2KxlQ3V6lGqu7+0C0=;
	b=c8QPUZgd31cm9kyprFc4qmahkdEcWIWFxexZu+9eVJI8Co9F9xouN5TP/J3LoDm9
	QYgxeqhwfz85BUXaHdScCyouZNh6Ie8L+1ucXs9z76h2Qa+mKl9OpO4SjugAxKgsbHN
	GApEsty6pavMr/5LjB7ODbEE1n3E6o/WnuiFR4d0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff19eeb08-84147295-4e20-4615-b350-68736a170676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 630e695c4395ee9eb8395d21660d0d3ca371cada365d4725878041cd09746af0
Date: Sun, 3 Apr 2022 22:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649026198
