Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DF453A5
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4EDC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688465168;
	bh=3xTkODbuFg+MD/M8yKd/jCtUqqe7h+VXeLNG4zk7S8c=;
	h=To:Subject:From:Date:From;
	b=fMBnqU+PZZyQiw7JEIsZiMV/FTd2cYkOFco9Sh1AMvMDI6NemCfqxVmkLF0mfdHe4
	 XXTcyoJ47RTB1QsxEiHg4n20W+AcwiBU90cIwhTdHuHdROwxsUV6dn2g8N7N+BJA03
	 yMvaG8ZBXAk5d8nJglhTsSQvcJ6G0hJa3k7Vpx8zCQNbgZDcnwyAd/+Rd3zUD7bdKe
	 zU/aQSEnoEbEoD7AjrTrJtxjx6WEeAjsSw8lW8HM54v5o7O18eLO4D0JFX6mAl5JAH
	 4+TYKgO0/UoGX7LOrmw4H3aXu7mJue53S5qd2qSrf7W0L2hrDDbeMlCivqP2UwAHH8
	 WJHYAa6syn/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD28EEB64DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846516870.12375.9571287320412900374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82047ed27d0387b61b227f458b9d623630abe569b65f1dd9d71598a16b72d20d
Date: Tue, 04 Jul 2023 10:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688465168
