Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92FF2C9E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 23:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644709258;
	h=To:Subject:From:Message-Id:Date;
	bh=Q4DnqA3Dka+mqMJgxvs1LGYXYMsDitD401yM2GPavRc=;
	b=kbsZ4Ie2kC6lgZzv0TzuJRK5bKv/CnnQXINwxHq8CMrOshMx5xkImsJ+bLNIOJjW
	Q0We+Rg99rG8W5V6HtAXskScBl7HVdAAa45fDx8a4uzBmX3dYiJgRdRDzpIZZT8Xf3v
	M+2lM6MBsuJRffIPZGeNC8t5796KaLcNjrT1nGSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644709258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q4DnqA3Dka+mqMJgxvs1LGYXYMsDitD401yM2GPavRc=;
	b=dhkFS679qSYxvCkiuXWlIFisyV+nOWH81Lgw48JM8L7z0ahCqKT+htkh4vK8T4MY
	uA1QAKySCHOWHLWPm6WhzaFqFatMABH8O8Mich3CVFPcO7YB+OX+RkhyLkQ6zCVg/NV
	KQ7Jo15JiPziqQ1vLgp8+JDIMv3reTEykFtFXlDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef04fa332-ef9a89cf-c64d-4e58-87cf-fd30ca77b3b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15c014bcf5da9afe3c2daf88b757cd8bd2ec38f22fe22cd7b4433bdcfde1ad77
Date: Sat, 12 Feb 2022 23:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644709257
