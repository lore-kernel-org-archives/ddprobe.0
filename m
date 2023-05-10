Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F6D20EA
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 05:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D27C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 05:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683696665;
	bh=yi2aFHgvtjZKjQt6KzTksBXed7GYt+sxHPHrlzRdlyU=;
	h=To:Subject:From:Date:From;
	b=LD/i6sppk6TC64cM6R0RLSpXb/GTSx7iBRV45dabv8j7k+gqBm/Yy+pBXLnpTiBdH
	 UZO2qrD+oqPT03uOa3BPwyNz4v7yG95nGxEwnwuvvZKxXknIrJTPywefbw/pOSobLu
	 /ILbvAh0geBSil35Es9QFBl1qJc3ukfrE6Ad5gAeYp7gEwYADoPg1eHFYVnJypTL6l
	 9bY7KIutORTd7rUDcdtF0v+lVGhK9xUDlxiy6sIGjfg/PirUoiJVuVt1XdvHk38NyX
	 y8Np8PZW8Rc/+NZ132EleYMUh+o6wbcdnWRXHYDGKHOVDmN6ctgSMo11VNjjR+PCuo
	 97qhxdVamQA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B74C77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 05:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168369666574.14876.9480687101492030441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86c3e806b81a27e42d545367b6a4094b98e2ff0cc448cbf26029e6d85e3e5cf
Date: Wed, 10 May 2023 05:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683696665
