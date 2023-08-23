Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AC47E2
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4A3C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692751448;
	bh=ezIaJiJWPF+LEhKHywyKcVnmRA4WKE/OL29ofg3V9iw=;
	h=To:Subject:From:Date:From;
	b=VZiCN/IFIiWP/CreEMIkTvgmn8XJBwcWw68t8GXHK0RJAQ50Fkd/e5juxdW090Rem
	 cmglX25nvDlnvG3e9gmmm8psErqmQj0+WC1BmRGr508dWPcdNhJ+GyWv23UpdrgVDh
	 0Sszx92COv3JxqeEgzkxp0zGJV3sXXfOOsZ85iPzh858BJF8OWvG7g5NJL28qndesU
	 ccKdsUrKV9YC9zvnCHvp9TAPZjfowTwXxv125Aa3TE9yHiTrdjMvhti7BYaZMjqn+G
	 kbLjUN+PPmFU4gPwGo6mVXSwdSLcbeciPIPQiFYLrlvIgWOzsZU0MGUDz0mWk/ucDM
	 GHc+gLylh8gMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB48BEE49A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169275144868.20738.12807718465433129986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2c453f3b9c9858bf7eb7aa7e2de6f4b31b21bcb6eafdd93645eb1c4ff5f9df
Date: Wed, 23 Aug 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692751448
