Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3C2625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE27C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661853653;
	bh=3/xdxTBmFnShEArvttLtDeIiW9PItTNUxFHNkLIaZI4=;
	h=To:Subject:From:Date:From;
	b=ZMgUHb+RREcZmjIsVLA5O0WPQ5jAbCrVohg7dFcuumnv3khQ2X2iz0rdJL+bEjcZV
	 j21IA1HFpGz1fmlzteYJxkiIZ0aCnc9psH06Fj4dnUF7fpudG5v+YkCKKz00ytnX3z
	 yaf6wBGWDzoDL9Bq7C+yr7GTODu8SHZQ2AmCK0tBS7Zd0oRzPtgjp5m57ZDiCxhWEK
	 /MKBXSLJi0EQLRHj29dIiVl3qrlu+d4vofhV9+eEGynhIxJRewtNx68eXJE/G5MFK3
	 ZSShg8q8mmzebcrbAy1paxhiT9g/sA/6Yeg0x5Z2237+cHN+KLyK/39VUXCY3bAm8O
	 QBfiKX+ptEM0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54417ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185365333.29943.13497200725237939561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65bdff59e8e70ad8d15a20d4fe2f6864e92bfbe63fd31400a18eb94d710440d
Date: Tue, 30 Aug 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661853653
