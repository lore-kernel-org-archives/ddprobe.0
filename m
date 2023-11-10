Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058C110F1
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcjihR/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B394C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699582096;
	bh=bgAapm4roXwsd27xYmq77XTd699Z5oi0ZwqGLzjXxTk=;
	h=To:Subject:From:Date:From;
	b=YcjihR/rQHtRUb90ZqrpbjMPcC0Iw7Lgo+wDix+z5kBIdeTMdD1ByP8aU9SXtMus9
	 wLizicH5gv+ZoW4ugRptj9OpP5f2TO7gjxhCrXCsszAtM4bvrGse7yuT69RbbtZpip
	 tz9M9D6xqQH5K4e817SfojkKcqDBN3d7NAh1CyHNfPCXRQgwpPZhMqdAtSvtRTS6B+
	 mDbjSU2PpNtgWjkIQwrEOUCh9lMoEaNc3Z7jKMrVQaHVUob56LhMLBqdpoeTUs8om2
	 MfJyJf04yqYBebmFHL6zEBYB2rIjhW4cC+LbEt3GzDGb9gjPkDpjCc0e3Zjv57sKN3
	 tBABQkFll85cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DD5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958209641.18834.3066659873514873063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76be33cbe4d60cf6855dd0207fda75420c246c18e7e7aab5e062c2678256702f
Date: Fri, 10 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699582096
