Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFF217CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4006C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682770565;
	bh=UlNiMO1WiYBENnn65/V/twCKicn35bHjnoj1PKFeNek=;
	h=To:Subject:From:Date:From;
	b=A9X20DbMR+so6dNQlN+sW8QQbCLgMgWfHQncX1j8lQpD0lGCVpIPx/G2EFcY14SoQ
	 81wXBJx7uFiKYO3OIevPqdtG77QbbYB1p+A3ztyJ/SAYbK7UI/4oz0vzUhhF43ocvp
	 1LRzU8inIw3e4CnZYkaZ6O50tZb+KEcVOx+NMLnrSKTH54lNqDq1DI14qyI77ULAld
	 kk9V9rSBxjmTIH2w2HYjqTl3cxps9ld3IAEBCwFyrlIrcJzFEQltmFn3jHq2uqYZSQ
	 iGYMVSG/gYfQPiQNMuawr/ck1W7I7m5qKdz2SdawzE6jZIU8jAS9Z91zlY0270TWuj
	 XCkCliLLSTurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EC7C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168277056579.29764.281156103220877095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a2f808ce10ab5532eb62f0a75abcb69a8c8ca1bc1bdec4d81da4d4b8818380
Date: Sat, 29 Apr 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682770565
