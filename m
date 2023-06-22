Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4711F923
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18B6C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687461188;
	bh=pfI+jd3CNYBWZDYwvLgDQhEE/c4Xxpvb2pYXeIdz3GY=;
	h=To:Subject:From:Date:From;
	b=deyaBxbMXsQcQZzpxLx8b4fqHcxOUFvHq5VmrA7nThg2ivmZtAIArOSd3Ip0SNUbJ
	 9a2B/wOsYcA/sfXuLRn5eqoATpglEd16ADiE3VgyDanDwlAFJtTWqqbqzZavPKeu9N
	 4uBVckwLcLDUOJgbfc1U33YFNOVR6HQe/jUyqzr8ST4LpeKB3rF/y2bCOgJZ4unyf0
	 HeYe62e1iT8if7uGQvC4nxNpU9hwu3ipqxVm/bY1EjIPl3ZrEXg/hTtAnuv4aILEme
	 NMfF1SpPsHixNAndGs4kyzUyRjMEyLn3q3j3HiE48Q2RpUX5nWStO4AOy9SuvqdShl
	 JNgh7WKbD482g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E8EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168746118872.30377.763849571801390303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542758f8af4375785db16c7e6d921c278c24be9133987af77aa46da804343eea
Date: Thu, 22 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687461188
