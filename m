Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5783A8BFE
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 176C1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 22:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682634126;
	bh=Hu7cvPzBtvQO043ZfEe2J3cuwXgUOUQX3Q8MnnGxVs4=;
	h=To:Subject:From:Date:From;
	b=MQX6mCd0Naq6A7DoAogj2+/ZhR6mChEhpPYQaTnVu7qkOhUmVpW1DKPhKJvXivfLG
	 FQXs8SP91wxOHXqp9nfh9/QCoE0yeHiUfd/0AlmdIQelL3Iq1O1xhW/rCqp+G0SjhB
	 5zaKRXmoExs2T9svKCu564pVnEblz6/wiJO/5p4V7z2+sbbK2KX7aVOaqJ18z6qWX2
	 nBjn5NtNPTvft1dfnWDlN7qwB8oD/YrFa8BsSFdaKHh6xt5/GNtf0uyiyTJqTCbOQ3
	 CVPaG2mQ/pPIEkCKJo4iTXV5RjYAYsBwTjEgtOYIjEWd/M6olaQK6e6SUEkFoI852i
	 BimFFoGhutnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E239EC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263412590.2245.16874364952989440458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b0caf1cd9af23f832672d0645a5e0465b63aaab08fe713527f4492fd5f270c
Date: Thu, 27 Apr 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682634125
