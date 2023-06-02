Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAF9EA8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:36:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA861C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685666167;
	bh=o9p9byxzcU2YlNebv7f/dfCdvcjS+Ck26fcUu3N6coE=;
	h=To:Subject:From:Date:From;
	b=XEwvkrCxwAFsL4cWJLdcDG5joJkw4FPLjFC2Y3sYAe68C7TI812XxIU0o1fiJyz2g
	 sjEC4FjBHQ+9C63x/tL6LSCvnIxbhixArdR6oaaTmhGzkoPDoso1s8gIX/nwIi/cm1
	 XO5xpchwdKJrR1Z+gVUq6jj7r6qqLWUjXZRGsKMzFuG0wiHAKfoYfXHVzOpObSeqEj
	 iDdkD9EVhNBjtV+ZP1ubaqTkE0jTB+yt7s8pb7sXMa8b2lUXTb5SpksR7Ggj9xpUcH
	 tKBhRuG5Z+EWcLWofWZL2rAIxTmq1J/vyJsmHGiBssC7x2F8+abLHPNBWtJNRtNlty
	 UYdnvv9BUTXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2B0C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168566616582.10292.15550250398759186004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17f7207408415313c2399c5325a4c7f9e5a320b63720875176a349b7327cc50
Date: Fri, 02 Jun 2023 00:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685666165
