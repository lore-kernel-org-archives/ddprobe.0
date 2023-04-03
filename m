Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BAB6FA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D417FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680537365;
	bh=ByLqn5ZwNYfVARChTHz3KM+MwT1uZuPPHJjl0zWtUho=;
	h=To:Subject:From:Date:From;
	b=YaZY2LhuqHhERA5Dny/V9Af0Bt5eI6lQqZXIsp2497GA++W0W3pbtlAenZ1vd1ULP
	 jIeIos9D5+0esyLWwLytZLKD9sFShNCQSr9OFzMl7gWHmQZbx/ddfboLzEna8/z8L9
	 rTUUMzj89mPNeBtk8oeskr8u3ZBb1UsE4qsZ0AoQFP6g0Ja6Cl5AKinQCs9e2F3IEX
	 r2rPO5eySDF2UO+n9a9oafZPssELFNU82mHLqW7v9V801/OuSWaWbUQRZJ8b2rGpy5
	 7VrTrYcHID5ijQhrPc4617vwgwQ5CiVUaQvdfgg1jMj2wAQEBt5YTX1SQx/FwB85LW
	 MvWYm5BLenTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95A6C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168053736575.8537.17802930495441414776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a886b3a4613c1c8ef6046287a17b5431eb5040c8e9e27e019b2604b4bacf70d0
Date: Mon, 03 Apr 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680537365
