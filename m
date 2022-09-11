Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34BC7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A1EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662892853;
	bh=zZc6U1BUFcpGANXa72/BfFqRTxFNbBD50D5JxVY3rdM=;
	h=To:Subject:From:Date:From;
	b=EKufAvzFGe57vWrcQ6o6rvi+WMTHcatI7nwUmKsTInjtLHoB46DvYfdxHDrVsNC3U
	 qoedKWytbH5mG8TcJ0kXCU6qL4/HARggE52HA6igbjdjaIDReYTQIxn4hb+ws7IjOD
	 D5aahAJVUv9YWKOBl0IlDJTRmWawQRu085p7ceGwiClSyCZ4tJdYgfKdIXuXpramID
	 uC4ikZiNaGmEFvJi8xhooiD0qpXsSuSaYL3EcLyecZ81ENgW+jA9/VLmvP0i8hs0oH
	 sm7VnmzGnJZDKJGbfCt3iHIi2/F2m0ezlB+K3h8VSzL6W8ol48Nw7h4/RYwQHksYWr
	 0dGeTYjHE+N9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589BCECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289285333.21096.4706465072175826352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5ed1facdda7ff9b60fbe97ad1936f02cb3a73679e5ff720a397a9565136818
Date: Sun, 11 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662892853
