Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80636332EE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C3BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685729225;
	bh=faIgF3G08ZJVS00x+Mo8bQWLTMrpr1gak+L6ramAUp0=;
	h=To:Subject:From:Date:From;
	b=tAVnzQsq9BxNdXbjMFUL69wZywpdiAGoICFgLUT9zhPTSFMGj8ebnz29U31JmpuFN
	 iPJd8Tm82x4QhVkxZ5pd8R6cg56yq7Fyv+5c2rmbsu7JXNd4kXiJkZ2PrkbWAo5Wkb
	 N/Vm/LaptoDVRxvfWul+kGtlb5vFuhu9FxQrkqa2SyF/8KuAldE+Pt/TJpoff/Calf
	 ilRlkMXe7dfE9knURni5Bz8ivrWUgD+KE6FaOZ8hs+r/gjH8FegNBYuhDXTnZftN4I
	 kW4bY9SK7eGYs36suWU8XPdhK9NMnHNOfEaMj4QnDsy2v3WT6gjfnYcj/IhEUkNVpE
	 TIoVo+8EiXOcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0A9C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168572922582.27348.15047413912301107240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f61bf4fc89660f4f9b71ce1ddc7b00f090e7098fcf4faa57ac792c8d0eaeb21
Date: Fri, 02 Jun 2023 18:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685729225
