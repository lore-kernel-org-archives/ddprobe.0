Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864871C29A
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 18:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EDAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 18:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695668108;
	bh=0FSrzrEGygq+oRg0wxkAECqujd77ka26tmHVUcXmBNU=;
	h=To:Subject:From:Date:From;
	b=DN4B37GqbqKavgfMDqr1iQUEUWIt6psbaNN9XfDOwsfn5qqd4dbFdBT6CJ7KY9RmM
	 whKwCHuOMOP7B1ObYQBSlDu0PwSuMyskM9OeOJfQ/BndzLuQzN9jQMMITgRw9OshuJ
	 /CInLhQDp29iT6lD4jLaJzuv+HwKAGgUvO6kEauDU6Rm5itYIrYgdvIFeLi/TEq97X
	 Ngc9G8rGJma6W8MuDiMvYE5K+eOhNf5m2xOMKI5HT/UNT6RPbXx0srd8wBSX3TahG3
	 k+L065CKMwKkOs/4zUJyprmF5UhxVwom5EdOTM1+XduS+y/Q660SvE4iZZtNEc0GXb
	 WxZQXi8+GaN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58A6CD548D
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 18:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169566810873.27696.17848112740594644736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef90cfec43673232610984415660ba3de3d1e1f5f33311a4da4f78600c12391
Date: Mon, 25 Sep 2023 18:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695668108
