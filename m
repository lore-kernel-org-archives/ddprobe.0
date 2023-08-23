Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609F8156E6
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 19:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EF8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692819248;
	bh=o6BCeo2pi1Efs8+IWcGKpJ3tD2XmNl2m7cKGZOIelbw=;
	h=To:Subject:From:Date:From;
	b=kMTCiBXVFobue5Hu4iMd+Kx0o9ceq34Nbwz0Hy35rd5BXv+nUsD+YvYe81/4qG0Km
	 AqKSgflUDRuKxGVvQtPQpV7wc5B9X6lUaqYlJggAMjOROAbqY2lvpwYhA8KwsRpxjx
	 5i7QxGBFgJphYtZbIJfy7zzftveMGeWi1c3ZBoiX63cZWkwxzs52O73P4I9+CYL0ya
	 /nlaTNnZsVFxTG+uTQPxlmm/oiLv51SdiNabPtEz9bHQ9LTjlQMYabcBNulPFlxJTm
	 GSlgtIZqnStqribGVZMc0DxydjQfRnqg5hfhtgZ0WmrxeR8YP9VaNH6XnB1Z3/R4Wn
	 nFAGajUsPEozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC117C27C40
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169281924869.5648.15683242847058560073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81880e8270182b7b6d6b38f7c30cbdee9bd054ab99ea5dbbb4287716fce3f4b8
Date: Wed, 23 Aug 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692819248
