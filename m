Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3240723DA
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8434C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679143325;
	bh=6GeDpGLZQhac5aR2+EL+4560vmi9X6iNnimTkYNq63Q=;
	h=To:Subject:From:Date:From;
	b=umxCACm0I5p69nJo+A1cQ06cgYaIXoudtruUYo+yPlQgAyIoz9AHx6FJzIsTAr4fy
	 OMkfrbJXxma0r1qJJo3KhdZR95DnbBJc7X5oEcuMoMkhmH+OobrokLPGcuJFTJuBau
	 Vn3o7Cs/+IZa7MrHBtBuHtERTmFYeop3WHSw6rO43Mf5yfWgaO0erw4Fduq5TLyWYG
	 1fM9vv6VX6+ecH7i2KjaQ4DG2p5c+BG7BbPgd6VU26zBgoNfge/Wjw83Ki7CiWP8xm
	 w/RQ5taM+jpCY0xw/rZlOcbms0yIMqOaG2TFiXTGUzlwiQqGVYsvxltsds8ZWw8X27
	 sdBZT2nJdv1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFECC74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167914332576.1024.15694905782592412821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe7090b4c76fc3323d17925af491933aa06abdb27c08fef40c1fa571381fde9
Date: Sat, 18 Mar 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679143325
