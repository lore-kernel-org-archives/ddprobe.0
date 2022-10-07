Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DDA256D
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F277C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665168653;
	bh=pWfP0j58J8OPh7oG56oUbrnG9LhwHB+hWXBbhMlXFsg=;
	h=To:Subject:From:Date:From;
	b=ZusGvVZsGm4PGnlXTF0J0NL8Ypft/7tfAlD1hnv9n1DRTxBdHkmyHOQ3jiAvikCwK
	 ho0DIe+n/DmTWiptRYwXKB4Wxvty54rKvCtqVk3ke+aPxGExds6sdSPjMTS5cg5rrQ
	 Z9xezwJDXKD9uu+6DZUFjPM0XeNBZEk77OqcQ8e0BO0T1P2BwJjEXUO1fza9a7+Xx4
	 s+omGDKFS5lIUwDsgXa0jNPT99ucyUggiK26N29CFjuL4f6TpC3OQbLihaySQeTAld
	 jSJQzG8snlfTsvtHaEdYFixqHvYJSeVr1ey4W5n5g2J7Q/z4YshPPYTaI0c0+/XJQT
	 8IX+LFJxBXB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586DEC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516865333.19340.11387418583946773209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7aaee7adb7f82bcaa37fe9d4b4f4ac61dca6bc3c268a9e26612db612099e1a
Date: Fri, 07 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665168653
