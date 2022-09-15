Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E58F3FC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65333C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663237253;
	bh=L3mKQcrG1hCRgYsflyvtrTYChOsXj1B2L2GD1SvHMew=;
	h=To:Subject:From:Date:From;
	b=apqnBQWGhyy/0cqW34NoSwA16/J2qafv4FiQo32AwsSqKXZC/HjBC65POjqOmcTiy
	 9M8b8Nas17ALvfVcbyeQGq/J/GzAItNChh52HtUdd74S161waKWZc/Kqhjo11S6re9
	 aSIdli/rvQfOmvrR3Zq/7+9PjTL1hnFb6ZacobQ4aCFcpYHiqQ+koiq4GX8CwE3aEY
	 eQEgNLkB2XlKydTmwI6xE523OJARUsY0Q6b/j6CEE7OaNhgx/h10ZQVWjltJBtIngh
	 OiuJADspdmruC4QqXtm7o1mcQB0UW72OSx/2ezPIU6drxvcJAb/OsZ8Q12vKv3m5MI
	 FMBJHQQy/RD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFADECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323725331.13217.11151818587406327818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636f5c3fd0ca8176529ce65b458ee3aae7962c07eaca1ccf9b6cb77c29b9f750
Date: Thu, 15 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663237253
