Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00DB2F2E
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8436FC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670323854;
	bh=EM84OjUcokeXKFw7Br82366bwRyMAm+LBz/6EVbr8WA=;
	h=To:Subject:From:Date:From;
	b=LFj2LBBHvbf2eVd5aRdCWGlVFbOja2ATMRmb3dqhOeObF2R6A/SPD/pH0XbjcC90W
	 oi08GteTsE0UmWnjx9RUQ3bYK2YQ5bXA+99qc5M9G2LXe3O/e0wyLpfbbzZyHSMSjY
	 3AjkAkCkV6RnMg++beJiMDP1eD9ajyTIGGRlMNCIZLN1ZqqDJMrA6MMLpD0ohmpjgd
	 RXEpOqRGNxcBmbOdeK0UDsXunZ6CouJ1sSvPwKVa+qIzyewRYzBihuyxnCHm4eHvTR
	 pOscWn5XK6XGJw4Th64rG/mQUg6s4Ciq5gW6rM0oZOAqDMxkMFhau0LCYK8jJDRdSe
	 4WVKKQWVKHB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6687AC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032385440.19796.18375479307624728367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea9b51e994fa1b4b269b64225413361b37b327c6fa2ad8d972dce28ece9859d
Date: Tue, 06 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670323854
