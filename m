Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D276879C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793F3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669058454;
	bh=7CKaX92KEYDk0QI2Gcm0oSnCWTszW41xyHMv3mTu964=;
	h=To:Subject:From:Date:From;
	b=jURdWdYPNAtvrWN83O7m66lknmH8e39F2tgWAHrHugPLkEXYqiHcsIt552w99sJFz
	 g0NHE7sUc6SC4eXVfUkfAtxj/acxrTkXx65xItSX3vqM2AtmS/vIb0Chox/LHNXCHX
	 0oq+YUh6JhMv3fs6fHTZHtiXYT183IiwrO+FBushkBQDkZOukLlBgGT8qwcare2ts3
	 7zSD0jwJZtM6raNIBuwUndyUtkvn8GTUfsPK5+KH2tz6uDk2kpx7G67ttBJAdLXNTj
	 21eQjpHW8d91kJ1+1bv0fWrcq2f6E2eSkp6qtDWmZX897RkkaQ5Qw18u7iGaHI/Yf5
	 FuxBlqbvvM+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59614C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905845435.20369.5975629499850055982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e7dc0b05d1fe3c5fd9189a75f68f365bc26450ffeca3750d7b4016be1ac458
Date: Mon, 21 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669058454
