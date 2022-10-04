Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E9A15A2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738ADC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664843453;
	bh=GfTV6mHv1SXh2Uhznsdtf/4OqfWO9RVV5qn0qzuLHlk=;
	h=To:Subject:From:Date:From;
	b=EgCsYaCLI1Hgh92ndxSoKf6a+e2JLfeOSJfVnExlKAbJdLcAK02orgkUZa6Xj9TvB
	 9ueE/WPJFbeiR1xPX6EEKVnTWuM7dczleFrK+/ADICxoEQL8tH9TBCROOUm0j1/Dbq
	 IFSllXh9bbZcIJ0tcM2Ktu48WAJrg9K16krVXQ6jFd3eK0HKEJ5cDhHdaX4WSqvwQU
	 MQbafN19aeE0k5e82Tpo1105RWuy3PsBx8p2IQ4JXQaeF5WAxim6WmiAONy3J9yVi6
	 N06i5WquyRtJYBx6RHB1WqddbXiztv2pYZMS6rEhNlMDhCnByZ1cz8HSTT5o4zQML+
	 E43hnUpXPlKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE18C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484345336.9497.2332392582845725595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8b113dd400a3d0b6a03c35a3de81678950835fb17c65026a8b6ead3c8e8200
Date: Tue, 04 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664843453
