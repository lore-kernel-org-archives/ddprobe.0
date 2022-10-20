Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A9C6110
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7597AC433D7
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666307453;
	bh=B+5R5YZhwEDnzon/fQaSKF2NO4mI3jRd7VwneUAJshc=;
	h=To:Subject:From:Date:From;
	b=cxP6Zcmc7meKJeJ0lt7IeHgNZWWHZRrNFB4mazAVZU+/sDkzm3NCZvJQPavN6guaF
	 6bnyXLaETpur7jfMtretpp5FwXzT62msIwbpf5UkY1z0cYxZ5pBjfkMmBt3pkD3tWF
	 jazlafQzHf3ISfdhQbU9naHpNqonYUnlMBZHP0LBg5RaafOQUbIZ/Ob/OcghH/Llo1
	 ghCrPMPZMTZZIy5LuWGaqfGvZdjpt/t0FVVIc3RUEWtDe4pfSDDS+UmYBTueBLY8Ex
	 q9CBBly6uk8TFTqeBqGq5cDh3+yEZnmyVcfKLyHT9AIf3y3/BBXovT6rj4HBdWbL3b
	 SZM2c4a8bt8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4F6C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166630745336.19939.13280316535508492801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0fe4bd3a8f3c0c38fcb218c6e34ae056a1aa1a5da3ad313b05984d5da907b3
Date: Thu, 20 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666307453
