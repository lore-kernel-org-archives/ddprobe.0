Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A399D81A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5C2C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685941746;
	bh=epWev8TgBySqhHAXOLG5xsfmipXZZgenw9ijeAGqq6s=;
	h=To:Subject:From:Date:From;
	b=edx1e7AKlC4wTUbf4ghahCc4Sya7exBfkuaw14LLde2AQ2xqp8stn3z0n1Euy26WB
	 RA5HYRxcWplkOoMlFDkcbPoWM3GrzD7x4bLsrl/2WjjcrN9UDvyf0R8Tlw1ZMSyOFc
	 w38VP/yWVfkBP4EEVExxJf4Jj1GmSCSyoG1agrghm+JXskHnGn5YubVuMQ/SXxFhVJ
	 hafNfqBjxQRkK6bWAQLqun0rB9yjubDdWDz8PtPtZmsX6jNdy9msDVzpMQwMWsjoBK
	 17Jd3oi2+FWyhERNwGn2ehlmNo/eT8dmmyhUmq2ZIYaDapLpR34L3snBbQJu52Mfw/
	 e+JV75/nL0kWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0B5C77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 05:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168594174582.28152.5726078894498888657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94ca5c5d117b8ddfd0ccb9317ebcf407e537a11bd3a41dfc589cb79bd8d4210
Date: Mon, 05 Jun 2023 05:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685941745
