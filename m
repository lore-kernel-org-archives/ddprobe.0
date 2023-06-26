Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479144C75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C97C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687767788;
	bh=T6rmwF5DB0BfG93+ocipddun2F70x9nWersHV2tzuDo=;
	h=To:Subject:From:Date:From;
	b=CYw+oIdYk5lXhqQyiimlz5zLzZPPdEKHDbcUF/E1XoWlbeLOKwDV4NrTafLjaeCtV
	 7wecA88d1Hu5uQpgHa7h5qMbtY1HqvAuh8hnhy+P/FVmMB8p9RaEVDFnEpPYAV7lpS
	 JJIgcsBr/PbNhnp69mwN6CNdn3jX8sf1IH567rneLHB4hqmTkN520tJkfzd5Hx9VUK
	 xHHvyLmxcNxqyrPYESsipZyO07XnfkaIqU1JMlxpkfYi9aT2Icp6v4xyH9YVFLuZ8D
	 2QgP1HAaO+vkwb6YnkdFu/HnypSqhz+yQzHg7ZmmSuLr3Rt2Hi/oslBVmb0FwwlT8s
	 huSxZgF1yvZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8058EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776778867.30196.16073918463183013810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bfc36bcd65e9da5ec7663a13681af044c1f559f5e39d62eea62e656de9ba30
Date: Mon, 26 Jun 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687767788
