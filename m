Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A205103F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8n4fxXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94464C433BD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704728296;
	bh=3zCOkhDaePYv2OwmuwmDJhm+vt/jRYbZml/2rXMkVa4=;
	h=To:Subject:From:Date:From;
	b=p8n4fxXfzMaUf11DOGFRzwxzgtsFSGEPh0lIVIf10N6a9tIteWc3/3c4QsroHX8my
	 HwOrEM5CEls18xE0fu6ybURiIWcCtPnRhWgfMFGjQvLUUTkmnMbA+0KjYO57J1m1QQ
	 qyiC1SuxYrzBQZsSzrVfS7Gw7c714XOJ51ybXbS0Ee7DeQJbR7G8m0t2ecLzHW6hdr
	 st2At6cJgsfDMVRizGrQbFr88PuZ8r7dgzFJb8sW1FXSWYHmPpUa6tL+0KhcQSbzRE
	 e0qxaOkFwmFPAsKHhzk/98yEsC6p/tMU6u7No1JuoDv8eTFsGmEkkz02yFze1v1Ycd
	 aUzpNAZYYR6Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A7F3C47079
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170472829647.17698.17325056005584218774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744d9348282769f724793b8e9c072f56350f972f0231727ed40ce65b5c06bcde
Date: Mon, 08 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704728296
