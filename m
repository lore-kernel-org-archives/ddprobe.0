Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2DC28EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67721C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662362453;
	bh=vmz7xBUiKsVxNAYjrvWprwNI6AQ1SZe0T79BngW8Wz0=;
	h=To:Subject:From:Date:From;
	b=E7kCc2/yVKi/q4TgUN4TacDw/DcaqJNLViP/0yc+DcESM911MehzDQnJBNzGd/NJT
	 XVuMUq9PeKI6nyiXAncLcFwaiWuTXfu3HXEzA9CVqw69GyQa2zUqk+m3xypK4T46m5
	 7s51nkI7USwY8Cf2Ay4O38eaQ7uaytI3WRnNe87LhV8ZBVVuzQcK8dDHZe3o0HuhuR
	 B7TdhfJmE8yLGT+TtRBsWyhv9KxSuRuoC5ewhp5/MctpLkIExhVJFUMnq7BVRNOozA
	 cNGUx4OltrRgHGK8/I8Tvp7xN8R/JTypZx8Q6do44FDYDkAaLiqdOIsNKqkpIEJeCD
	 BU/JEuy5Lwi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DDE8ECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236245331.28243.3559144858438703376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6369adb828b71fef83c7b717043f403ab80b9735b276765ec4c282ca711d11d1
Date: Mon, 05 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662362453
