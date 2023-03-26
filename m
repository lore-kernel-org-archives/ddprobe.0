Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450EC62F
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BADC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679803325;
	bh=XSfWJ3zFdETP4DekIBdv/zXl8jHxFjdyaJ3BSoPHSVI=;
	h=To:Subject:From:Date:From;
	b=Oo70mNpU1GQw8pdnZr5pOAEyvOKTrzLEmFOxki1V0Jf/nlxs+Eo5QsHfEMzXGZUpK
	 aaHBFAzqJ8w+DIdUgIe4ZExQjOB8GXLEwnpp1529IeJsUCshE0bXta/lqcxCCOaBei
	 3OuSxJn3Mjhz3cLZMmF5vnyKpZqL5d/gU6CtD3Lljpai9Tv8rmhIt6Dj8PVcok7H7H
	 FUQh1xIFr+dvcnaOsuuKgB2oJba/Fkge3oG0iUTorMlsX6irif7nSYzUtHsBCZRQkz
	 FF95wpxqLrbC3M3c8XfY81/sET4JOGHFr/eeWi4rLtBI7XEifgGOTuVqmCbO8eHyl9
	 EOxLOqCUt2qCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7831C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167980332578.18243.10766047380141825167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204d150c6d3c58fbac9e958df8e6457c60535e124406eb9612667ff647e7274e
Date: Sun, 26 Mar 2023 04:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679803325
