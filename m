Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4962F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645972284;
	h=To:Subject:From:Message-Id:Date;
	bh=3s06vxcnjDk9stnMGq14QV5qkm9wf1elFojslCD4BwI=;
	b=OZ98mdiBcAiXfw3pWggG1l4ETedVOC1KkO9RcelveHi8ad4b+yAGi6/tbQqa+AAx
	pYsSuX/xahm0cdcosP1y/HpSG6xQ4I+H9Ir/y3I6+2SPef5mD3XEKOlPE7hC/3QM8m3
	mVYdp9XBUJJFcOH5Co+ZaPOc0S81j8L9W0b/2KBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645972284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3s06vxcnjDk9stnMGq14QV5qkm9wf1elFojslCD4BwI=;
	b=OYunwTgLO1D+RTtb2ZTUY4FvXe/9QKsi2Pe6b9G7jMf+DHX/KPYlMW7xoWgTXeL/
	mEMi3EHkhcdMfYq4hP/JfCVpqjFNR69RgbZSqVfneUWud1JMt/RjeJvcEBY4Byx/0yR
	l789ftwBAZe8Nxrc5ReV9H3CXmex8hhyFtZbuvgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b97e588-f9881707-0879-4eec-9594-7f97b7e3b571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d3a72976ad54bd16699098e21b4be7fd364a8187601b8759d09479719dc2e9f
Date: Sun, 27 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645972284
