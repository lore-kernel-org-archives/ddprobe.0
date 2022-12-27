Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C8B632
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C3F4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672132887;
	bh=iXQIlxW5TySEOJjq82O8DXtvCgYvFmY4dqhbqGD648g=;
	h=To:Subject:From:Date:From;
	b=amdw5CazST/+Mrt2Ocig/3njFyZNGy1pakbErBcq3mITWJRqBWy/RzC9vv84G37Cq
	 8/C1FQeunhdRCU5gFnyD7pmXsB0KNQTj0vndEer5F6L/SOkAovs3KxcMpF81u+vF4j
	 8BiBgGOJt9/Fx0GppfzpvnzqOwBjCNBWrZqV54TiWDxUU5QQzowMHUZ+hskCwk8tqR
	 zrim1S/pCYV+q0pmkvD8HjcCQM+Oakjp8sd2luq+ej2hxdfBqjgkz/0LjWehqxMop/
	 x0Guiv7YBD8+EMtkXxpFngl187IGyaqXzXzWopCpObQxHrDoA+KS68kl9yLOL14DYs
	 DUQtCMrtfKOAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68730C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213288739.6845.2209837570402838738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0715755efe03400de970dd4d080a2b0957fb55ed367843f62b489ffdfda621
Date: Tue, 27 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672132887
