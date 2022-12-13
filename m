Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23AD33D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87460C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670937087;
	bh=AIhxYHjWLQUu/1NaKk9hF1zVQcPpFsAuzc41jXHpXV0=;
	h=To:Subject:From:Date:From;
	b=si2O5XUqlDr/tF5jzX3sjh1e2X6q3kw+IQrSMW515+Woo9BMGT26sgaCV/8sbafWc
	 bZr1N2nd6bzDB0kkI37GTplD8MctouiozkHQ7FIqW5tvcD2LvOD7jIBEUBzvkb+sYe
	 eidcBq3yZhVyGGIxJwPbGdrQj3u//NikyB5xBd4YjARHu59SNi5T4QU9PAEcLI4Wyx
	 uo9WIxHoNkHvKcv7WQFKKN5OoEWCevqz2gtMLtF8ele+IhAGhZRzWoaDpJFBhX1RZX
	 hTL8MMIQ8xzJfOwg4UjLYnwmNRaZRdCVtdl6hnQF6gmx2aqzOqj5OdmuEUBZwi2Ze3
	 FUOs0xoFeC/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68512C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093708741.15574.193751303328076566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d17d7537656db1329e5a3f1878f04ee07dffc847fe5c9d0fcb8742ffa4b13fb
Date: Tue, 13 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670937087
