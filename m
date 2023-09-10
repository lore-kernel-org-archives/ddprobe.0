Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E45610E9
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6AFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694309648;
	bh=G0XHHBpAAkXgpLuldABfZh5+lM2QNgqcZeKBmZS+kAM=;
	h=To:Subject:From:Date:From;
	b=J8a4Cmwc0nLc6OxAzCh/hkJRvot/VtpiwDjvCLRXX0ar3EQvW8Xew1/tlToxKBMcC
	 GPfy19W0Msc/GgfwzJnw7Ie3R/UHO5o5iAfCKi8wak4CZzUvH7O6fUybltb43Stp4/
	 hoz+zdX92zEjkA2yoddVdMe88PvbSUfeXNBk0WV165EV+H7aF49VUAiiV46fQbT7Q4
	 Yd0Dum3Rfs9KmJYXz0PYPbzZOlUxzFKwAUdygF9qIhb2GhISR4U4mG2yDJpQ1H3ji+
	 ag+46WZEBnckAw+AzZcWoe1DlNEOyS5qP18OvEllT9HI6Q63rF9qNrWDQ1ZM1d8Ou4
	 txgWkh7RVUyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50D4EE14C3
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169430964870.28100.7440212794305760831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1012e2a8f78f9fe9b0c49008fcccc1447f3dded31b7aefb138ee6c498b5273ad
Date: Sun, 10 Sep 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694309648
