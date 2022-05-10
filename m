Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4D01FD1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 04:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652157420;
	h=To:Subject:From:Message-Id:Date;
	bh=K345bxaScWPH1Uwy5BR5hu1cHtBJzTpaK+qNKgUsBNY=;
	b=aTVKpNPJFCbPgdj+vjbzcvamRgETVDp6WmBVyYjjCfd0u4OkwZnOGFQVPx/cegud
	jPTaMVOZQtBUb98qyoDwek2tUV8+J7nb40yxMNCYBphMKoPFdtOH2BkhmR1Qa2ZEfc1
	wmyeQQSjoR5FHTdJ//ChFinaIpQ22jtjYOBfLzp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652157420;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K345bxaScWPH1Uwy5BR5hu1cHtBJzTpaK+qNKgUsBNY=;
	b=VhA6wJqdUSqj8wkvTMQX96EH3MYit7rEN/wMkuBhPbI/VfnALOxnjlQLL2gJ7OpS
	VwJaVSwnsvZQL/P7u83sGzHsE5iZVh/5eZE1Tez1emnM34de3qwsWdKj5XbFKDqWrsP
	+dOq+Id5txOEXb1H6mdwOflQksJJvZ0DDrpDXP5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac418f4b-ed6e27a2-ebb1-45d1-bfc9-b56c9651a931-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f78ea3948c9ea39ba2d7cb477fe432112aa5ae956b7df6193d9e164ec4f5d36d
Date: Tue, 10 May 2022 04:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652157419
