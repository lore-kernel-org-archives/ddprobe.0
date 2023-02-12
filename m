Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A82EEA0
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 00:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F362AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 00:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676162646;
	bh=CuCPxCqsUv/SFExX9VixP8xuXzn3eeIGdMcG6Av3zRA=;
	h=To:Subject:From:Date:From;
	b=a7n+twj2wOClLoPlOAL6JYPIdmgngqNmmcm2nbr2LnAKk6jxiVkpftqm7dFlYVdwe
	 wGwyplmSLqvRnqIHGjq3zMIjJBLHELbI1rg4owfiABw8YO6d7/MpK3FhJ2ZcSvSyz6
	 PnZmyaPEbDthOT8u+nsi962Sytow/9uv5eainSdz2VGtC8vaTlMxanujuKV0cv5iuE
	 KrPqPYYnvYdT97Q5iRZeJGQUL3FGHvvFDE1Er+Z98kVxMgOrY6qXSy3CBs7WNB40bZ
	 ZXy0kfOB2ZHz3bkXchkeQDVfURqKdup3Twk6ka+mm2ufZIQJVs7NS7zzu6lkrThZvw
	 Wyv6fNxAoPYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC0CC61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 00:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167616264584.30310.16550047543875922372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2589e484abf69ec509c6584f8e29bf3eb5f4441350022935877dddb0509427
Date: Sun, 12 Feb 2023 00:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676162645
