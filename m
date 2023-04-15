Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681DA29
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9794C4339B
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681539185;
	bh=bpxMm2VxZ9yOHPeYFLDLl0zlDPWRVbkbwgcBqkn24bE=;
	h=To:Subject:From:Date:From;
	b=WpuMQkRScJUE3OfrRAsGYGwlwh5bl9w8SF+/GO/5eFoh0DQOVCGI4a8kpLmtD5uWN
	 TZzCquTd8B6GTFxy7VoUhuxh0Z3+r/wfBfy5LjMaKE8UzJ0S2XnK7qVrxkk5RgDwCn
	 zeffX5WHM0r1IbdEszNUg6l5yMAECmaivLXgd6Nd4EiQX/ke7wupYFDr2T7eDPIdsr
	 gAwbAuXgLiBeSzMw1g2DVCsbE2jWM96gGuPLEhns1NZp4TuqcFP/GuoMIAofnW1ta9
	 9FfN4zOwI9wOQVDY1pXteWgZC+UOd51inYfUF9KnYVFH5nCQVXFGtxua0nDRWPD7gk
	 aTjlLJGk4O6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8BAC77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168153918581.26729.8125181963925988854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9ebd0d1ba9c7de2f910219377dd8247511df5de476a95bfb07a334757fb496
Date: Sat, 15 Apr 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681539185
