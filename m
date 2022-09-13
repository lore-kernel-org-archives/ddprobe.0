Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8A43C30
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67562C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663087853;
	bh=CrB93aD0bJXJEnKWHyTQoTog7L1Ajxem4Y3qNFp/Hw8=;
	h=To:Subject:From:Date:From;
	b=DRQtJzhu6UskXNeD4teCgo/0T04vlEb3NRzSiDEsdJUd9KqQAQthvujF4oVQ9UHWb
	 9wHYU8QGGg1u5DvNpSL5dXJa+9uxwYG7BzwhIhYkFB0EvP8+vize2j25K7e5PlyWHn
	 PpfNoTqD3g2+0Os18sMr1moDqYIhTwJogxYQHqE+j0SievyIrQaMgaK+wrxtdDOV9g
	 SSH6XDo6kIfxcCzw18ixbX1GoqdAIlE4aOZvche99FA+dz5ebLEBI2oSevLX35mtEf
	 WZTop+KqzAEfGYgS/nSGl1nAUKrZXo724hxQ7bgUHCmUShcin/HXzzbGbcPqD/JG3w
	 dbXlspcLxTSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A50ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308785332.25357.9206779278455667612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435d3ffe99aef477bdce1ae4a0f823fd27ac52641b53c283623f8b139fe0156b
Date: Tue, 13 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663087853
