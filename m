Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454661DDC5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A04C433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690840928;
	bh=13MxZCU8pj39HzWYx0jH4QP7G5Xt3eTg/yZ5U/4id4I=;
	h=To:Subject:From:Date:From;
	b=WYrFe7qrCdk6c8RxKFH5dCv7g2Hwc8HKOJ8x+yAVSQMEH6ULG70SSM2UAve0jRIjx
	 0N/wHkcybMf8+jXV4JQ+cXvtfH4gZb4Vobr9pSNrsFRrvZSjfN9NGO/YTHDfhowbbF
	 QT/ulYbNngOpRAnU7cp3okHrabWI8+6CD+qdDiQsj7U8CB5MSaRJit85zWUspQ75qC
	 O6ktE3OEbjc9HheYII6hRx2UnO3L8BdJzfZvvUy7OR7wvT4UycaBM6iwEumHSYJ56h
	 BkKWIvYpE30gLmV7M6TylsxqWuKwQhAsvOk9bpEI+93JzxgOAOFxmBneTk0Z0YhqFD
	 LO4iFA425iRXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908FC001DF
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169084092868.21746.6835911069928405483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518219dea682fc8f61d6d99bd5ab60ea269ba146b86c8efc25766b4b564aa57c
Date: Mon, 31 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690840928
