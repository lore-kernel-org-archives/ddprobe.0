Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0027A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647499284;
	h=To:Subject:From:Message-Id:Date;
	bh=I8a8oedZbY4FxvBJZb3o8UnmNO+gNsILZ1/n8c3cbrc=;
	b=INwnEi7j6aSW6S1Dj51e6XxotxCGvO0Sa3eftwFiR/gM3TlpMFR+wsd3mpyIyZyG
	QnLa6zs/fLeKrO1mTSwMaH3lK2h88jbDaylALLFJNcLwrmpmkFK/XVD9lJ9njgs4Aam
	lxF6olfLojz1ut69HQ5A9fl7V7ErEUX8vDXzVMkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647499284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I8a8oedZbY4FxvBJZb3o8UnmNO+gNsILZ1/n8c3cbrc=;
	b=GtWXk6ag0rEP4/3nwOBqUa0Uk4j3OekbV4kraPX4yVUZYkGxS6Lt89aWA0BvlDc0
	yrduQ0vpvR1FJtfFfrnS/WB0siQv81yyWPEQcoc1smhHKBvJn3VPxc3GsZZBNBPAItH
	W8LTzCZQxuYHLYeW7wmN1EgD05X4n+QI8LoVbrro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f969c1106-228868d3-13fd-4f30-9fad-791f7ff5ccbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc93e1f74396a830369a3e99ab2ec110ebce8bbf99e7bdf909d1e1b8bcbfc5e6
Date: Thu, 17 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647499284
