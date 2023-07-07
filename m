Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494D8BE60
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D2EC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688735228;
	bh=mMqAWe2MVV6KztbJP02L4QFAo2baKfrCQm2zkxp8nI0=;
	h=To:Subject:From:Date:From;
	b=XKdB/RvFsCp2HTvXQllufmk/Clp+GxQzpbVYfNcltn6mfsXPW0OR9bllqaYzX+KNs
	 aGmjashZEt4tmN9AMfZpG3zQQ7aYIDcJpKGxLfntrMj6IU8WSCOmtC3mU4ZcZCgYqW
	 2qRpI068tX8ywwdkQBmaZh1NnfKAK5rdz1gIyOALN9HI+yQEk8aZuyG+ebv4CpnQpV
	 Im6YEOB6sjbZEEtq0Q5hwVvbrPOIcVAG16I+tjuMuXzeiPkyWayQ9bFMZJNuy96/zo
	 yKOJLf4Cyva0Q2txg4NHGHbH8xEIkV+5DKzukuFjNvIG99TOBO/na2X0nAl1mnE2tX
	 zzbQjPTZN/Mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B710BEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873522874.19884.14265103251675577403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f026b73f0c51450f15143dd7834ded4335c9893f9f36ece848dbbc97f6b89bb2
Date: Fri, 07 Jul 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688735228
