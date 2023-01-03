Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E762E362
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8EFC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672763487;
	bh=a/Evyc238zHEt5/THGXrT7dpnG3O/zil3v5iVuPXa/0=;
	h=To:Subject:From:Date:From;
	b=jba+4VhEDIRphnui6/Jd+sKV72PxkDRJo4XlYkh4P9AX0aXcWa3Wzb4aOGssn0HMi
	 z1LsyR97WDDLvxSuMc2syBmBXIMUMc0dpc10iP5kfxy6vsBM078GIlO3/o6hGz7+SF
	 0PKuCyajNnb0u7qEpWCl9lZ6TZRa9d1Q5uWZK9xLhhqT2KsmsmW0RUBz3Zn+IB5QH8
	 ttvw09wAVJMe/VLq2+KO2AlrN8M+dLwTvu0B/9lkBY23ibivH20eofoqSIfsAQmd9n
	 hX06D5W7VaUOvNR2NhL2PRua5nxY+zufsJosbwUq3FpbkNAcQqO2HWqHDD4mHGO3R+
	 6GGqFQIKktRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A578C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276348742.19115.2190139124603763219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d6f9437839f391e2b19ddc7ae133e914d6430b2d366a949da6af523210a177
Date: Tue, 03 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672763487
