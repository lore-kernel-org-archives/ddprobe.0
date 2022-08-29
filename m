Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DDD2F53
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70318C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661799052;
	bh=p+P8A0rqvE7sU6J7ni/rHLjQeHW6AVPlk3DGUiOTCLU=;
	h=To:Subject:From:Date:From;
	b=qarxBmVlBm6ZGuISfgJIgvmJ56xBXuxdPmEQjy8706aIfUvdyTKB0JL66NzNWZ4H8
	 OFNQzu8o9RN9iXvEfR76IxvsjXhq0gx+2a61r+fwYNdCv4IAmT+S16BgpGiMVKdkEz
	 ahjbgdRyZSBOSefbxLK4zMj2JkyXR9sNuMw5YUP/6hnVJKzCAcmyTryvEYQQVU6fec
	 BBRoK6m+uXCQwqyf6LPrcxtCitiXi1rxvt5QJtFj25oaWgPTuPx/cnSg1GDoT+BG20
	 SQeOorMYsj7vFkq5QzSES1dOYww/1Ca8rubdCEjkM5pHVmhQlOEvXvW2l2PE7xBWuw
	 dV3SNfte7qiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F08ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179905233.29400.13982945686446353326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dd64fcbd8545b36d42f2820fd7e5f4ec69fc26c84415656cb01d997685dd83
Date: Mon, 29 Aug 2022 18:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661799052
