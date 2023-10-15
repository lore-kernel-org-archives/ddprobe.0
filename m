Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA93C8EA
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eESfI3IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B33C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697398628;
	bh=fHmuqiWZoREEhOJLfMwmSQVvW7r75vPUASrfuroYIaw=;
	h=To:Subject:From:Date:From;
	b=eESfI3IN4yr2naGhloutX6L3R0FaSj4vPMYL8o3Mu35CiGmi6RWwlpihnjd9mYfwP
	 QGsMAbpEIC1Lo53uZxGuMmX+gGscOskjCOOczEQx4k73sq2J9wApeaZclkQ11M6hM1
	 DSlRWVzaUJACuZ6qA7xZ3zHGN9Tqq5Rq7eGdAgxEyGotM0CmGknAXWm2ciZZKP7jhI
	 kDYJsVkKENVP0GYmZS5zu4fl1+EE9OxKdqP/q2jfOv+K18N+LhQQvyNOLs8wNOm0JG
	 wNFPGXz95Q9gGv0z6DjEEtTTqJDirv4OIH6rKnLvwwvJoWDpsxaeDosvztvPmq43a0
	 Cbh+h2kBE/s5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28ACDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169739862868.20451.350619410297806754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8d4560f5785a08d282293963060b7c26d73fed62a19167c059273cf52e5cef
Date: Sun, 15 Oct 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697398628
