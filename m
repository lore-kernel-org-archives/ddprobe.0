Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739B4366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645497385;
	h=To:Subject:From:Message-Id:Date;
	bh=BhFmBr8S6TIxLY70JPXQH6tvSljvl4eGrJcBWw4NNqQ=;
	b=Lf5rpnOyBF1qtOpWrzcVELPkRWPtGZIUsZPZYoP2V8iVc8V8ZHMAWFVvgsL78Q4R
	rbb6DMgSR/Pdom8tgYiTobrmsfA4XH/CNCy3AQchTD87PNmyVd4W5B8mkmVG00GIslJ
	sZTNjat6InP6Rxy5xyHqzftHBewET5PfziFliqF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645497385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BhFmBr8S6TIxLY70JPXQH6tvSljvl4eGrJcBWw4NNqQ=;
	b=ON/PcwsgBlzx+uPXUzcajthXuy7PHy3gqRKdwbg58e6sZWA4Zuv2L+6WupJPMe9d
	r2Dyp0upafQdEvUOD/yg6qH0uOrTHW1qjq6V2ENEo3xghelGmbE9snhfJX8Dc0nCeGz
	j5MJGPDcXH7uDoabrCuy63QQdA5QTObHmey/qGts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f497f70-140d155a-8700-40a4-933e-83834f8167b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b70f9d41bf835281c54e8715c4ce98fd7faeca56cbc254899c920ec9ce199aa
Date: Tue, 22 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645497384
