Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D25CEDD
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 08:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E299DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 08:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681545785;
	bh=KANRN6UOKSxZY4SS7NvBuhkA1gt+11QeFGxt2ARdssg=;
	h=To:Subject:From:Date:From;
	b=jYArh+A1yjku7ozSerwsw4CmjMwfGs5L1iHbnlVbUCPTFR5vG4ybXp3cSiJeu0FJP
	 wr7tBOJVu+3/C2ayHPgiS8aAV6yNCcpnL+DL5PLgBcJJFUkwV0xa/PO0335trxG1IK
	 MJrXHHoaWyoqm0IIPx8xtGV/iSGK7hpYfn8a6iOdJfgenUmIWvoEnZwMWZVQFzdwKv
	 g49OCUA5OFBH+tCifQ1gzHjZdcFJcvBrQD87Ga6oxZXr5HYoL/oYmpFiwvm3bTnPBM
	 lv4BDbimoMvVPyv/rZ0T5xPIZZcLjjlMuomq/WIxlwOKeLGbXtndqzXu3+Xyj3moUy
	 R+IoaIL6OmERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6256C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 08:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168154578578.12571.12271523215210961977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed63697bb2348822285973653e214d38745dfa1597659418dcbff5f9f1cd50d
Date: Sat, 15 Apr 2023 08:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681545785
