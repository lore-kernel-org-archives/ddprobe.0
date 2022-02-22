Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEBA625
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645509384;
	h=To:Subject:From:Message-Id:Date;
	bh=v9iWp5qtvNPoYOJjMnawrTs5R1pelHJB4JiHbwDbYcc=;
	b=LmHLefeIZsDh5CMPf31dT949A7dN4Z3BQW3dFEgFM7cAUlLpOB+ul10eRd0C4pgq
	y/m22XFPcgWfG45Cswojj8bXcUc06Arq4sfiowU30arWwSpMOLt5FZxlpNTQVdI8OdK
	2J+SxyWI7dndKp1beKXNoHx40FSf7c9xyUf38aFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645509384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9iWp5qtvNPoYOJjMnawrTs5R1pelHJB4JiHbwDbYcc=;
	b=cba6riSd9M90GQ/QFwFFIqE1VIBRCGRAwIGLHW6T6c/g9q/N2jGgzYfuoezispuZ
	4HK9QLPXsFjvD0w2e8F/WPwqRPLD7UeIw/7jpKMBK2btYmnQv+6/qlL86LGre9tmp5/
	FolWxkxEJkw9Ez08cHh154dQfktM6nVwP1q26oco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20009a38-b5280722-01af-45be-9fb3-4cc85e19d5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 178fca602177a37bb0a835fc073339c88599d925ada25f650a702e56fa8f6fad
Date: Tue, 22 Feb 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645509384
