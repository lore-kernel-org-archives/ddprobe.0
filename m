Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23E26AC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647384384;
	h=To:Subject:From:Message-Id:Date;
	bh=6m2rF0e8hp7H5eudomLPNPSgfzrr3xTMZzS7DPVUHKo=;
	b=eR+alVaVTtS48bfJja9AWzLhzkkl/x4cBEkwIGJTqRYRQD2jeTpDW7S78RYL78vR
	trp0TtwXQ4l4IXClR9nx+LwON6cn9xumyhPsXr+cqojdZUedQ94cDu92NNPIEAlBQ5n
	R74oblBsUWSmakA6gSYDCzZb6fH61WEuLPfkirTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647384384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6m2rF0e8hp7H5eudomLPNPSgfzrr3xTMZzS7DPVUHKo=;
	b=kdv80zpSvTSUWLC976vTQyKehIQ+dU6RaBADUXVNcY1ANgWhFOZ7h+I83naeYAMG
	Y6boeKwHEIDBoF6HGWl1CxvO1ujeNk5aieY7QlaOcq1s77ivAtPRt5TDTU96GvRVyxt
	QCe9dgmQFfLwbuPOT601Azd2y1gj7hh46tP6+mao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fc2d4f1-fa3ce2e9-ae12-4a1a-b5e1-f62e79a3dbb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb7fbca63cb6c743f884635a64f2eb8614b6af75720c12c1b3c0c3c2ed119d37
Date: Tue, 15 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647384384
