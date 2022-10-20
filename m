Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBB67E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B95C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666230053;
	bh=7jIr5UV6hq2icg1SwcUIxrCyp4ubbSwbAkTEZZG8rWo=;
	h=To:Subject:From:Date:From;
	b=QXwV7ETQxylyLmEwo5v6u2DB891bvKFbhSi4YG0Y8iGiez6t78s0P96CrHdDOHyhk
	 sU6uhjwLsqn6M2rujJYEmp3gm+lEoZKH5FemnCioPl6B/i931I+VPSJHLxv4qRTlat
	 +Gy6J6AFK1BI7nDVEPg3Y6V/49uiV3Kf/RT2+KDZN6hQzuflSCAvA9zRds7CClpZ1A
	 80okymRlUNpzjwPKnm71aksvu/RWoI7JCy3+NRFhVONZE8eaFfgI/z9Ab8xpmYqIZE
	 a/535cN1ByR25b3RnBeYS0WbvVGpz3ZE2QPzn+fllG4lpKVBvSPMBtZiOo8V9G+MMx
	 YXcluxEhD+krQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F27C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623005334.6217.4231819628352558523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5fff5c79a89e2f4b629c8a7121318144a482a5ecd215f85bcdad7899330530
Date: Thu, 20 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666230053
