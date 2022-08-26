Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D504C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCDAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661542852;
	bh=XxmGsc0yE8kkLYml4LyaSFMkSH48YwFLaV9tqz3k4IU=;
	h=To:Subject:From:Date:From;
	b=J1hpbp4zHIfEYXDi7MxcZk/JFPr+NN0v96trskBZyKkMXIQwyVYuz4mV+OspXkVrF
	 PtbuPjmw1xSJnTGsgkmkEYqvSZJPJ+fShX2tt+fFInkuYodrLz89wU26ph3HJhBJlc
	 7gKQP9z+vlZAw/jV/LuXAoGgAYuMUrKQwSFO41HBZOw2Vn4Rnf0Qzon1q8DBtqqp41
	 hByq0S7/r+Strq4/SgJkAfSGYfumE/VHb6bg1kSQYwKLrsVtR8w1AprH3j97cEEZzi
	 +LGfGFNqZ85m1a7ndWbEMi623wlo3/e3sSHUwEcEC2ppjn5bumDjxzJrVjbCWZnEiA
	 kbQLR0zPW46bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52887ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154285233.1751.1958041410011100353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c25e1e2afc2b6cc3fba595f2f760a93f898d95f0974201edc0917c8a13c19a
Date: Fri, 26 Aug 2022 19:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661542852
