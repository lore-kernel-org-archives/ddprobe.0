Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499F915AE5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CB4C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687443188;
	bh=GYb7xm30Fe37qAgEV00bYx1+g0NG7U9MJNmVwCB3usM=;
	h=To:Subject:From:Date:From;
	b=a/Mv2WHoiB5Bh+bfv0NW9zH/CpnzBF/iyQQzR0aTOuP76WmngKmruFqXEV9k5Sow5
	 eGeLEfflNPeOsatAE5k36FZ9xegl/ffqL4Qfxsy+JZAEy7qmYYWrSXa2pq7XmwrVgx
	 jNKcspxclFnqbnI5mI+Ml8lCL/+WA55rndnsX7UZ8av4eQemim1y/mC2P5CDadg9E4
	 UI/p8TxGe4gwwePAINX/UDmCAwCJQSad22dHrI91Z9ocZsEUb88kuY3Nxi+KoCH5PC
	 PyZx8tCnTlK3ho3t2Jz0btjovVOiiUIOPrkMXydYV4404Jvk3aAL17PE8JKkKqKKrt
	 Wh87M7/k40MdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A77EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744318868.32211.7334215577611175033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fc368ac8e99fde780cb2ce6d3633da96b355f468e64d9d2d30c9ea1b821c0f
Date: Thu, 22 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687443188
