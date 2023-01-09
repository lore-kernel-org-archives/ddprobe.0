Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA44D8C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F89FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673293887;
	bh=mxCIr/9PdHc2Ox4yoTqAeyHFSVf44cDevFzdyXrYqQY=;
	h=To:Subject:From:Date:From;
	b=obThR2QQM0f3XyRbo7tjLVwyxD1MmE0T9/bE4AJQSFs4W6/8E3MtBM6bfhbdtWZhJ
	 3yLQ4P98ClgCFKeTLv34I1eC9E3JWCDkyjs6gPhtl1GH6UlhcyJQHx0bqnsAqzANeN
	 s8Efdi5UMbJSef/3dYzFZdDd0Wpn8EePRsyPT1MBiCiFvxt+7wswGuDPVOFNtyR9cT
	 PpNxXt/1CnBQ4OXQ0KiAEaDDGXs0TmTBzJWZJB2bucHihGLufl0WBlGk45e397imaM
	 4ALvB+iP1EnaxwwwGGDMpeNYUz6y5w+8E/5A4PBVdK6Mk7RpaeBOwcPtqXWs/00XAG
	 rkUoW50gioQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A58C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329388741.8170.13397107538537732282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19b4d6db5e652eed01d9268a9c421be80c6eb4af72dd35c0808145de8d8b693
Date: Mon, 09 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673293887
