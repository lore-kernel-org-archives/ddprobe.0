Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E315ADB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB37C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686051125;
	bh=3A7flr363JB6do/o8TUkPcE34/vStmh/NZcHIhwAxMY=;
	h=To:Subject:From:Date:From;
	b=bcPrHZf5RP2sH/CcYYEH+FHKOPmrEk77959csb8qKuRTs15SaNIUM22wvRl5QuvNz
	 skGgqTjgEyJrc1sRcl5v1czkj6ToypmBNu9ku4hbMR2vTgIm3sR9gRgEAUMEFfcR7I
	 GqFlHCsE+LA1OZu3VnAQlujKlZgFz8UicpxaS2pFDyljkra1sWkE/ICVt03pBSqlcy
	 A7IvNdt16YEnFSRV4oj753mD0GICLKFfl8Y4YS7bUeychUZHlT+FB0FP1si6b0lcjN
	 tuzF8bIW7Kpv1c4TdCWZu5X5qWYzB7xmZnoTkjgHlfQ//luwQgoGjBqOQc9+XY+xZC
	 h/grpRU8eoQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86C0C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605112574.28020.12407386956828716836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7dddee51483826b1e8cf28559585b805deb35e259911c64d3cbff8666feb37
Date: Tue, 06 Jun 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686051125
