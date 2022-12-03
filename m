Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27791FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DE6C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670035854;
	bh=cE68o0gmJwcJonZE8hiaXS/SfcxkWs2S5H1bFAiLRpA=;
	h=To:Subject:From:Date:From;
	b=Fi7rltIIj12RZAMzvpKDtkPqH0vdVp52DDt6PJbdHdVZHBDNZ56Nyi9un8OwRJ6ug
	 Dg69PkviK0Eos3ojyZgWNdm4HQeUZoNdIvB1E7DijzyekNlUBeGMT2xFGgTmI4TlHx
	 LL4qoihpEvVP5J4O4tcUo4xqf5gCr7pArkz5tlYlSs7dyrXiSgp1u/Zw0A8ZquyN5H
	 a/HJMVSrt8A9udJpjfwyrnlJEpj3b0wwEeXqmkARKVQI9D9P78POK0IugpuAvEBVdv
	 kVE4bKcAl1C1ioCt9CWzQfJO0Wu2k1wugjYiSaYAbcJrhFjQJHRv2IOrxhH35GRtk1
	 HS7r7SOG6VYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512CAC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003585431.19860.11015601054041798386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e08f2a7b2ce788f1c919d0b98c27d4640fa4a75cd978304f41f4567e5e2a48
Date: Sat, 03 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670035854
