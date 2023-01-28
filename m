Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B19B7491
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0A5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674939185;
	bh=orHQQLz3jFepGRGVsZY0kdjnYcbtHprNYz4sQj5V8+4=;
	h=To:Subject:From:Date:From;
	b=Q4J0mzUfn2Q1DQYMJycfLag7YtEayaOszcVbZo/EZJC0jZ+8zSoMNcKRirL5RUSt4
	 QciINbO5j1uyND+AvDCIqnnZ2g5M5cofYzSC69lsqDrHGvg/mdwfA3/g2K4LCMwJEg
	 3bp/ukNzNJM4YpsvgL8X37wv6bCprju7S4sJjCtPLTmPVlFO+kX+gEGMuRhTmq0CU2
	 KjARy0qgY62tAav69L0BG3s8vvKaX3adjIEPVvhylYnstKVBNGLuAgcoj7gyJGdyFQ
	 bOqWxWAjypPb5NrTAw0wToK3KLzZLWzFLQvI295P3PZFCSSOz+kNQ5M5S7zCAkRctm
	 S+qI1VyIIRWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32AFC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493918579.15281.6022359189388505101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2306b84ec4315a3620da9b5ef31dad125f61cfaa70790566d988e7960b8fb4dd
Date: Sat, 28 Jan 2023 20:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674939185
