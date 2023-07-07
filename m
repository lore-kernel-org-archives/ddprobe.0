Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6D5D511
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD94AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688749028;
	bh=/1zKYf4JhGLKQhkvleH/aqpdxV1uapuVIxMCrknBdXg=;
	h=To:Subject:From:Date:From;
	b=GFHACQ1FcZbbNUbW8BThO1kXhh7fqE3ETMmbH1Iq4mWdF7n4XYRUACKNj5SFYU5K8
	 fmIV+FxPDJRwOH2cgJOkTcL+Xd0z0z1UUvHnlPzyropFxUszpHwTn4HvbywnOrw7+G
	 4v5zD89YXwNotW+402uQBqgA6dLvdrOKBw2etuvRFVsEUAPn53pDywxrcMAl7F2Yfa
	 wqrWFfNVzGgl01ZQUwKoiKOKz2Nj0W9MQ8A3gWzwzsjLvQu1JnCk0KHrMldU/S7LAp
	 B/HQcDLZdLjmbx8r4fSa2VkdZgVbrspeqT5ggywUvfdwpsf6OBxsI7YgsrMetoLLH6
	 FiyYPI4ZRbtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDE2EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874902876.19054.5911980225512088393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1493ef5b18f00c9ba8e8d85c921cbeec76fb2af194dd6ceb5867020ce0645cd8
Date: Fri, 07 Jul 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688749028
