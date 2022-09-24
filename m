Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD3D17D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4D3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664016653;
	bh=Nk7xI9jdosc22vWai5hfGiuhNMn4xYaPBnWi4DAvkMM=;
	h=To:Subject:From:Date:From;
	b=MjSzr9fr05/H2+dlutytOKqS1SHATEhanT2gudlgAm3KDHnEYyyPn5n4A5QCFUS1C
	 UM9smxsmJo4hPE9FWk89Tgk0TNM2R8nmZKCM9tQzRl8HRWRAzcjBDwZxjvQlpRetj2
	 EMWEINXPtJdFq1kRU+st2jOtuZ4QlqvprdQ+M25W3+i0l82llvtMO41Cag/30qfK3Y
	 J75Agz4sRxw6Cx2q7f6Yr+WMZcNj4Dnr1uLCE26HmwaFxo4Xg1rnktkHkvXzMujJB5
	 b09Ty2GEuh/aV2MiM8oOJ9xLUi50rVYd5bkD9ALWU7drPjZjy3JmDjmkJpuHFQ8GFD
	 1wsVJErXXaAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50332C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401665332.21800.6768453609907264137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81038c352ca92f6899373e623b4c61be88dc59ee609de48c6501c7c24442589e
Date: Sat, 24 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664016653
