Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797CB38DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645153884;
	h=To:Subject:From:Message-Id:Date;
	bh=BuGlhkFqIf6qSbf9aoAPk9Wf3HJGtjY7EduGrRciUzI=;
	b=I5AXeAueYdrTifzM/1T0s2H2bNKzj02XbfYL54afYXM9jWs/8Iume371KUsoAPbj
	cqDpc8oU6iBkuiEb0wa/h3YxSZ76hyfdrBBtHqtMahJVVDcfpiirvvIGnGC88b6lSOL
	UYtpZOrRL120ZCTYL6c/hIMBXo50NEob/+rrXn38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645153884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BuGlhkFqIf6qSbf9aoAPk9Wf3HJGtjY7EduGrRciUzI=;
	b=JNTpuh57s5YDeXJLah+XKPucFAIg3w0i8b4IjJXqqBbZx+Gi1cP6pcUPk4kgqtkf
	1CqJLPHWw8wH/yN6tStgKCEPCodynwfM1Z8GrL6GrJ5/zX/VNxvWP8+aZ+Fl/2f4EtC
	UcMaiUT8fhrqcduWr3LhzyxUVZl+uvnnB5+6YKTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ad01a5a-103bd656-92cd-4d72-b228-b01a54df79b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68bf3dc6497243a544cfda206adf716503832181a94739986aaf04ff5091af0
Date: Fri, 18 Feb 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645153884
