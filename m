Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF88A21
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693286048;
	bh=o860o0oOMpCkJXwwEEbVAZRHMjevi6GT4stQLqzr3TQ=;
	h=To:Subject:From:Date:From;
	b=RcdtE9AMbUqebJdO/j/0sybCyrB3KlYmPprY9F0zA4Bx/vm3P5PV7gj5sdHQTymvo
	 nDpqfj/MDx3LkUPmanyp1yEvt4r7O6kkk1NQxA4bMQtZeXCbikzu0Zu4oOlx1oGKeF
	 oEJgdpBpJ5SOrJImkxbeRAmN6Xa8glgyeag0/MZchwOhDVJQFJLIG0YA9jFi0SIGZe
	 CTQO/tX6QjTirBDccOP7wVwdR7AamgI4lv5YFBNls8BjIBgnKdh2qsViDbNyXvuyKD
	 +xVMxUIm8AI4y7qLYd3ABlZuPOXcBc//5J4KE0NxqYMUFnrfZFIHSVS6CO6raF7ROt
	 1tdzWz2wxByMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA289C71153
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169328604875.23281.5276137425150365720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054915bfce1fb0cbf6849981b7133b5253d3315339c6e24bc2af549573e3d836
Date: Tue, 29 Aug 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693286048
