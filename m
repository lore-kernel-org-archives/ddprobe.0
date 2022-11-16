Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3137C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD1FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668568854;
	bh=HYzqVDVb6lBWZvbgLUZMnGL/BNgZvpUVRHVfznTyQv4=;
	h=To:Subject:From:Date:From;
	b=C+nCSNgLWXr1TZiQryznaP8ugg6cZgoxmqgiAswlXQdktXYI4t7jV5enovxFxuUQj
	 7JCfbE27ODsc+HA6O3wDH+fTBqG8lT+txr5b64ejWLA/hDganYs6YY6/XkRQD+EcWY
	 ZmW56roqmHrUO8YT6xfz1qze3yiCJaulP/xacF9a3I/M90z1PzH1VHp31AyqwQgIph
	 d0zTq5VbRaVR6xIob44+UjAbuaKg8iLSIMr5DN1ArLypXK8VdIGnDrUC4lRy0QoJXk
	 zcqXdLJDeLY2s4/gpKAHlHUEcqgkF52OyjQeKxqBgjwaoZMwvrpbBs8djQsM6ZQOeC
	 ceeNCyI+6Gu0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5927FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856885435.6448.8908360159425441436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1971aa82814037552a41dad623254b8b9cd8e2c16bf00ad16732ad6de06155
Date: Wed, 16 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668568854
