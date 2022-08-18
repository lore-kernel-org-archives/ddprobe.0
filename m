Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0997B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660849252;
	h=To:Subject:From:Message-Id:Date;
	bh=boCoqA+J8rgmzsVwLoWFbKo+10Fp7Hl9VfamjB0hYBU=;
	b=F1hkCyaP+eq3NB2Ay4+o0jhhjUAPLsYWGY4pPbUhQUFCvqaCNzUeEoR19cCPpe7P
	u+OmFjAC6B8fjdUqcdvBZ7fm+NBCXjW5UqCNWWTVeczgyiLkw5hxSf0WOlYKRZchpxs
	OjaHgfeQYoFQhHYRbugavqbuDkdUGqzhg4ynFtrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660849252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=boCoqA+J8rgmzsVwLoWFbKo+10Fp7Hl9VfamjB0hYBU=;
	b=dOG7siBw18uzdMqhifs4K/Wyn8rvXRTMoLcePyywIk+xTTMj9nc9AZ0Go/EZBPsn
	QF5Ynws0doZevDi+wcl+zF3nl/pmOi0CsHKF+CfrQKY+W6Ba8TpsnNirT6GvGrsrGB4
	q6Y4reBCiR68ghxbBxjrfnMrmvBsUDxe4tm6wVXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b25468e7-954d1d0a-acfa-4581-a0ae-b4e67793b763-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2cf7ed8d5ba3e37a6d5d2b8887f2d8134ccb987d390eab42a75761bbfa3b244
Date: Thu, 18 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660849252
