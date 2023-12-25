Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098041E519
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZJLN+0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B68C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703543896;
	bh=ylTa1+D0l/iJmHas5dmRc3FIANL8z6MGetXiTzMuoes=;
	h=To:Subject:From:Date:From;
	b=BZJLN+0fJg8hFQ2Cx1OgeWABPs8OelDIsXbiw8llp2numlzO6+xDH7TIrJ5P5tp7E
	 KOOrR6TDG51grKKHwB5yHqONeub1clVMozmIe2wwftmYh8w9bcZNaUoumU7ZcCx9pL
	 375C/NkoQRzQmXwVRiBtv4K40/6lfu57RlCwo+ssfBFRBiF05td29571wzeddFlSYf
	 wUaGPvr5Oad/mdsQJ0njl0cB/ryx8RhLtkY3v34zR3gLrLmxFIrc6Pnk4Ylpj0ZxB2
	 dzJZ5WiZXrAKhc/ETvzqaW2H9+KmPUmJTcs5Rn4qKCD97MiPWCWT1SujUWqFzcMeLI
	 gsf6Z8Bdbwbwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1C2C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170354389637.29441.1020793919422414044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8187b2a927950676aba16c20d99c26516dbda3b2b95dc871931654a9c79df8d5
Date: Mon, 25 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703543896
