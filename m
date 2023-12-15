Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1154563CB
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujZf9qpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79364C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702620496;
	bh=Kj+yL838fKFWWqNaYLACu0L7YG2OzZb2GPtV2yEz4K4=;
	h=To:Subject:From:Date:From;
	b=ujZf9qpNtIN1iZxemGruFybymePNUAnMGMJJ8yZghXnNdnLw01KrWNEbaHHSXJb3I
	 PyjfR+MZl9fLLU7IwePFLn0zWWthHbt7ypvpOhbCUrO0zcvvP5HiYvsNd0Sr8i7S7P
	 yy1DYPpKvkNBPE8nTDnlabBTQicT5TCSWUxRCY21S9ICY4gTJ5qwKgA6O6eameIQtv
	 xvhU17TWF26T1wGNNWCQGFF56FSR27li/4c1QOjjG1dt57cFzmgaX4lwxgod5/ejE6
	 NqYNwfIGloevssdeAFjqWM2O++GnqNxsTJKIU2WP7MS2BS0I06iE13OB7vHscSe04r
	 3vWpHU3iCoeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E40BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262049636.13734.17270784409976370650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acb877dfc5ba96c9cd726e961c752bf114d4a817347efe48506e61aa33632fc
Date: Fri, 15 Dec 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702620496
