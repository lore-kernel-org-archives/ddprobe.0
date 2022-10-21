Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94B07B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6955BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666325453;
	bh=UEZFC3k8zFPmsAvFpU/5u4CbxZy6rySuwYPhajZRjaE=;
	h=To:Subject:From:Date:From;
	b=h3znDHvS9I1M3iVXRL/W43vmtH0sFj5I2TZa01WwJjVSfGEzDbZSP67Qz8Dr3IJC6
	 2HkPera9Q4oqBbFxxUi/I7ilY7ZjsEg1YMS04f3yM4WVSIOlyvr8rd3zXzow5N98XJ
	 aGj9rwUqCs7nds6ff84Kw6SoJYD+i8VkvYPkKcyMmq3b+7ZAKhTCMkyKMmrGteXAXl
	 Qa6nbwGpEcxByIarVFNc/k5F8YUF48ZhovyPmt02oaRR6SPjg8iwirTD/BCdp01ymO
	 87fr4GVnkAYhFaz7xDKI0xoT4ZPXHtIDBtmWy1zzCSAmkYo3Itaekf3qeh5jZ5+G+k
	 vV90assLwk81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEF8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632545331.2261.7948631045442273015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ceb84222c0b98b292e3c2ff92f08a1e6f96f5ee94989cc3bae79a0179e7fb9b
Date: Fri, 21 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666325453
