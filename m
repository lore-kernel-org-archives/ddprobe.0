Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD430441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7199AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663963253;
	bh=NtYJyDOeXuz6ErQNSj1MAi5abkOBwkXFHgkp67UD9bM=;
	h=To:Subject:From:Date:From;
	b=l3TG8RxanSnEZQioHafcNiKvJ+eqbZLapxruExzD39QJ5LcbsZfBDmZwglyDpL9QG
	 I2QGcwdFmtiDUAiSV4p560C6HggZy1UgfTTlgwMh+2BzF36n6GwRriy+kN+G3YJdqM
	 BMvwXXM2AtPsMO33bf0ITsEdptn1L8A/uibvOMRrZZuG/d1zOMnkrCccpaHjO757Ro
	 hsuyBYu7ZtSnD2y+1f4m/Jwx/8Z0tyqK/ueJb1jvISJZ4zF60kbowohUw3mFg3lXmt
	 ZbsF+L6LSU8RFLP4b4sluGcyMlrR1ZQjf7TtZgazDkw+p+xJy5tMylkdnpA3h2ZX+3
	 dKJ+xepnY2zJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F032C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396325331.24427.9229359020119235051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048ec0bd684d22c871b6d98df64400b8e52587308a9ab9155270948a72a92806
Date: Fri, 23 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663963253
