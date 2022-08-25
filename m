Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EE53C23
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB0AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661455252;
	bh=yR5gchLyJZuh3hJUDC95qOP9s68B6zAkOx4kHxWeemg=;
	h=To:Subject:From:Date:From;
	b=HAxMc2smJdzGPdA5VSOnyAmyq1gg8sMP79fwM9P5/UdMKzWAlcAOUJ3LnITXFK5+E
	 jANjBdB+caDZPuqceTNKTxLA554KkomTXMJxAfQVlSwsHOfzhGaO1hiCs1EDODHCgM
	 jffXdQ8mtczvDtHarcISgRbrhv5EuoCaerCI+BZvYwjJrnvKovelgAtb3naX/28xR/
	 xQfqfUfmiLhIGTwDgccN6rGBVqRJccZ/7Njx3cOTFjJHvZ9LMcFiijn3veXHAtZnxm
	 NA9Wk2uOaup9OejeV+qbpww93KpXCk2i74Ua2oSO3EVw+NR3oYN2JILvZJ1zEpzL8f
	 /JlgMSxZLVv0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582BAECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145525235.31864.4799121809529940026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3d798d4daee140c2ccd74b0684e78496f9570a4d170c029b59f93120f2b33f
Date: Thu, 25 Aug 2022 19:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661455252
