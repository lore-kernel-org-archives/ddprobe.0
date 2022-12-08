Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38E12102
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F8AC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670504454;
	bh=P3Tg82PBews7vwvFk5g3CBwLD8pSIbAJyp4g+fGr7ng=;
	h=To:Subject:From:Date:From;
	b=uZLsX45BF6BWqfGOWv4qn+oK0bkZU/g4y0mSJswqkjilBYEJXPvJWul5MzfqRJpeQ
	 J/d/UKcLHXicO8k5oG7S83uj0/W9Nctrxv4O79TNF7Akr0+/ep6RQ8GasU4b11UWwg
	 Fp5CFlEhe3PEVjap0sK3pzg68zRwO9t494tff0ANaniHZU5rzkZcem3dnNsgOeV88Y
	 le90Sndnj5qgsFhkdjSX4nI63pd5KSfDrbYomcqXOKcRPd6aOqKArlanN7CXj3sfZ7
	 AOKNT+JXuOiSxC6N5GahCNQO8/OFS0OmbQCl0BIzcbGzboPJbMD1Hs5aVAGGNvw5VD
	 9yghHmINR6VPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F5EC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050445438.21985.4320610718696218373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6509eb79ea01ada4ab3f035a10855537b1c07e3eb919305938114f132b7d3844
Date: Thu, 08 Dec 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670504454
