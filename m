Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53733C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D0CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662371453;
	bh=zUX0T7jhKqRHFSr5V/sklmUxdHYtI8TfACgCd5Y+vL4=;
	h=To:Subject:From:Date:From;
	b=XXMGbJ/bdCjD5pU+i7jzeP+hMfZRr18hYudPRjB4mSkjNZNQvFf8ScJ04tL8Na9YN
	 hpNpYY5sPw2tcRcbZlYRXf8pD5aBm4I3igXDiThq8h+3bQoG6FpVCVbmWucVPGEbZj
	 CW8N8l2IEL/Jq3XE5835swHARQe/CZPfjhccurQ5tEZQNUqToTpChP6igFSciWxwj1
	 33jjUgeBL0hZPaFLqfGU6IuIfJ4hgmoSAqAO2kTADPdKvZtjyxwP+F8hmSpgjQoxWX
	 +Y7Uq37dtFan07BoaxwOz2GhZblqhVDbazPfw/FU7xc+akRcl6pOfK2llZVTtFYEwE
	 GvMEpNlHKjfRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D578ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237145331.11281.10845562339850687855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5142ff3d54354dfeed8965892b0eead499992c2ad0f4205869e24ca63fd526
Date: Mon, 05 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662371453
