Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B4F1365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8587AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671577287;
	bh=0kBD1+LcS1P7TDc78KoClC3HiBot3lQ0SJKI7IfvTzs=;
	h=To:Subject:From:Date:From;
	b=maMgoKYdLpFjsShZM78ubfomXUIkMsG4oGxRw2Lw6rkWMvrwtCREscOdTy+o4hIML
	 6URIXQGHsVZPDY8PTn1pyyMvBXWvydVczpoiRtp98vnZidHKNC9M3G9u6s8PtHss8N
	 HJ2idQvH9ojH5h19emj7k7N9E0VKA9MAIawXXhOWuxnykJGG4NPMgXU1LwURYm36XU
	 F9bUR1ZSaB/p9mGyLrLlKa8qnYHR7vA6pvB8Rn0O8lwkvmwScTzKoerS2DmLGopj6D
	 gQl1XgZXX//7zbmOUT4wPH5wqtwYmltYe7srsDZg+8dpILQSOjE3r/NpBx2U/JvVJA
	 C4nC9G7DhHqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6756AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157728741.5273.15920535184703920364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e194386648c831cb9ee8205173e3e6c71112563e625f06e09b553b3431fb9c
Date: Tue, 20 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671577287
