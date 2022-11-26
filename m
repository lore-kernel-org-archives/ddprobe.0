Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DA515A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 653F4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669429254;
	bh=cO2XAGSodx37PyudOV581cqVeTvM8EA9dT7md5mByus=;
	h=To:Subject:From:Date:From;
	b=gILOUIHi8qbaN53tlxcWL+fCHnM5TK/TfOEFd2x5fzOwODfbC0UT/mMFyJfr9R/Nb
	 YeSdNeAnqzI7bYp80bb0j/AHdK5Gu7a0X48OdUQIfnEipAuCst8g4dH2jFGz5ZQ7Re
	 STuDcckKLJc/hXw5hlBtcqrxJFQvhJ/RaM9UnSSALmFNy1RpIiybMV+CBuDJM0JrTr
	 1P9FEeYDS7JBKIJKuixtrMMnwDky6OjBDYW7rARNBgx01zL+xRm0g/VTFNr6FJfAJF
	 Hzz6ApsC+DPmyISL+wBqc2/Xdj9qkfGn4N6o1IphYrvy1x2QVoz9kYEo0HzFmncNDy
	 Ltuc7PFCFOdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EABCC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942925431.26499.16225002259282668976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489f8297fef4682a68157cf0c225e71c57564c16a5a2cab4a0b7a99068efa03f
Date: Sat, 26 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669429254
