Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312A9200A5
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A79C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683912905;
	bh=DyhmWbs/lPhdiHTpPVFbaemrSQOVXj8f0E4GfmJMw90=;
	h=To:Subject:From:Date:From;
	b=AKN31Rraeg8BMj8ua18ma+Ow9JAPJnbG9UpGnZtCg3nNYlXkeF6R7G+sEyJZ3PCVN
	 Hj1tjjuDpd3B9xs2EnYLHjmAHXYubvNcWd9NC1rH18l17uDl+irxGVuKInIcLzHbq1
	 IROXxlsjyf9ngXwrB8r71s7jchNl4Kb+4ytmUcFnTywEILFfTZdBz3E+XxsbkmiMax
	 ObMzZV8pneBo3LgQ43d7TqpEzEJuZcNB6ELm1JmhyAG6TNHUOHrDf6pwLzdC75DM0c
	 I8WZ0vVpG6YHln7kVJ8cH7bTpCJonpmTBIF4WRy2mTs9Kbk9XiQU1NlMys+9BeyFmF
	 76ls/HwIY7jEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95B6C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391290574.15726.5269988468613294043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63262857d57c9b679916b4e1b63fa2020e989434e0b0095ca5dc09a3cd7ad027
Date: Fri, 12 May 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683912905
