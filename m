Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EA210F7
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CDBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685502245;
	bh=3nieMkS/CxjolXASuiU6NoRXXBZw4NhWw4v0u7fePMc=;
	h=To:Subject:From:Date:From;
	b=lm2GAiCdXe5geLFWR+v8eBvwvBKH6+zVW4GKk0fhEcAq/jHIoxmltzpduhzoQ7rPb
	 Q2AWnsTcGDmcE+h6AnP8gc2XCH5HCIcrdiPMwzJlt1WXg0sxsKOMGiMwuwgifhaRJb
	 R0w7S8lkiKw68NtcG9F3ZsKUab0KP3LQjDW841hhqlMUd2TRDx3BC2JqBggMb3HQQV
	 hZcwk9VpcDu7UZqlVhkmu3AsvTnIrB01dv6BbcJN9lIMR2PRUjDK+FySWSIko7CwGd
	 PBvHq7rJNT+sbs2dTtxz+pjhX4CANB1BZkaNpTL8m6xPXdMLNYwJZV0YhbOhYfRIIy
	 1eUPMh66JwkZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9963C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550224580.5345.9187344295107631642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22da24327a2b5287a84a8417b76093eba02afeaddbc271ca35e07e08787e011
Date: Wed, 31 May 2023 03:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685502245
