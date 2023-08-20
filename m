Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F04163D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10B6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692558848;
	bh=eOkUlg7m7ErzNMyWcC+iORlCNhkh2WBtfY0aZA5Iouw=;
	h=To:Subject:From:Date:From;
	b=RH8w66349uNwqxt/NFLoNS4kG+su+2RJ0T5Y6k9BOOa8QTSQyYsd0s4XNfWkpIsB4
	 1MJh4utGPI5fy63iq2gK2T/qKjO/djdZhcy/JEFt901OrLT01uZT/80U+NXqz+sPp8
	 UksS8zv8WRWWuVrxL8snFTYYBHvTsnubaS8UYtRFdsu5l6KSXhVKposE+AcXEokOIw
	 AzSMgT6FpHuisMD0x4UwMTxuMmfYDJt7eJjD1W6bQg1lCWzJqvlo0hE45+4OtKqX6Y
	 7J08kA6qHPjqkLZ7R6MwQiBV3QKwKElBbWb5EycVbPkNavMHFD8Wgn3Eetl1r/UMYu
	 CzITOgiTGZjUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB4EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169255884869.18965.6211531684413525510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bacd664902a0859dec8105525094d40bad3bf4cd03728c821df9df8d150179
Date: Sun, 20 Aug 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692558848
