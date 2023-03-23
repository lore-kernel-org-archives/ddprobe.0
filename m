Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3897B17CE
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 03:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5DFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 03:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679541545;
	bh=Uq/aZxodWXufMhp7gZAjf8tCjKjCMTR/VOvLbPoCpls=;
	h=To:Subject:From:Date:From;
	b=ZMRUi9Fc60yOAfy2oqlEkIUdQ4v2+aey94xLvQjYYuyNTD4U51XBWwS0gUj+b/GXk
	 kHGISpV8h5AxvhSAh438On+6/B3oWsOBw7/KCjBMNHQLC1xp5SKfwQRp3kPDUlL3Yk
	 KYZQ3oPrxZ0cdXkXwp4CX65yYk+Bbio1zN9Rxu3FET8t4SZaPkBi/ZRu5I6+l0Bimf
	 cHZGx3Fwr3OXSKXgTstS8Tf9hI+1H4NQGx9WN7SQo8zzN1Lh2wk701Vy/os6CG+3qR
	 cIZo2nVWBzWtoZBqssAR18DfvmRMyA2H5QDDgEJCnYWQ7ZUulY6Nhk+uhwhfx5INwp
	 8xR6bkrpTZD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF44AC6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 03:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167954154577.21026.8758662281924499791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a883bbbc192a2694095941f295ffd821bd769cd710619a352754b544385d04
Date: Thu, 23 Mar 2023 03:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679541545
