Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5951FA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 16:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFADC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677861426;
	bh=e8mV80tDJnbexa5Yr6jXOWmkRY61f6Hps4V6RTNQ4bM=;
	h=To:Subject:From:Date:From;
	b=QLcjNqKzl7eCtePnIWX6CTe6lfBjz8Vf05B1463gn3sXnD19HVoQqD18bYD3ARqYH
	 430NVeJjBs8tz37IBWQa6mx7ccVID6jMhNpaQIM5H8z/U2rHmrhawKf/ZHfZsrGhDG
	 ouGELNoZH7JucZT5qLIv4LqrGdF7K8VZGXiaj2UpzBPaZ0SipamQNuOrDD2f8GxCC5
	 qtAHvh5hSfrWtLbdbfReeq+3Ny2+yggDhgXzWHEM2PnD1zml6D5rniRfmwObwuk62d
	 4qRl1W3nqqtWfgRwpikGNVVB0eX8G96z2euLp0vhtczjkj3EhlglCvM5CVuw06TEIp
	 v4FIcNLyIW6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91FCC7EE2D
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 16:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167786142581.4603.5665962987800237714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197e0c591321cc6f89eb0cf9076afec32cb1f5d75a2e5c8d66a461324a7b1a82
Date: Fri, 03 Mar 2023 16:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677861425
