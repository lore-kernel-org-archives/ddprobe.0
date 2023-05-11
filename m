Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A95377
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA153C433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683794045;
	bh=U5hJdWqCFHL8WN9znUerzHxmIq43SH4i/+kMsGJDA/w=;
	h=To:Subject:From:Date:From;
	b=bMIZPw4VxmGXtFDbUfk26MZDuQoROKshx/hJL7K/JWsVfVClC5rh8c1sbOmtkFrFQ
	 vCRMdVdZdfQxv+EiU+9Q4LIyWz2Yt/1TaX7NX3AE3AIzm92/l0941aFvGc4Pxfkhnr
	 roEi0b1OhIxT2GVyn9BKGhhx+/SaUo9Kiqbq8rTvpySmGPbFWamL84Z+BZRoFteHU+
	 J+tMxTdcZUbh3hQiXMhzTl+f/dwIenZh6bZO2UFEc/idH2FnA6Im5zZ2TkqTaGpSWO
	 6LD2RWfzbAu7GkG2I1iCsHBujvYAbhWaxPs8biBWRCjSiQMgIPJQKbmYVlADl3ZB1o
	 xbChmAPspORdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1E8C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379404579.26323.46658751261531843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3d04d41068ade75430edc57f65d440c19278d33be053446176eb6ab0ae4da9
Date: Thu, 11 May 2023 08:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683794045
