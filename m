Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D242561
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29BDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674307325;
	bh=MrZre1G3IdblC0H0AADu8mo/br938JA3R0M0K6KIIgI=;
	h=To:Subject:From:Date:From;
	b=D9xHOjD/PMJ/4+TtlokgBTDzVCmnLL7iq/97Qspd462rHHFK9S2tmsTbbYSbd8Faa
	 wFdSA/jwAMvT3itrfiWiQa6yk5lzLsJd+IgIhhH+7XQMdXErLZ20K1h+LlbPgY9CuB
	 WAEumzy/MlN3htGOTZPHofprTNGUYN/KxpN3VZa5v+GS8Hs5XcxPCGHFzTXhdWCuCB
	 wk9DyWECzslH7OH1Jdqe7MMUAJklT5D4t4L/JaIbV9BATplUQUn/tgAaxXQCBddU8I
	 Jqv4kdL33EsXlhtAm6/ensDAl7nMlGEpdOn1o9jn8etHjKWP1mjIZjzKRcoLacDwnc
	 XFJZNGynMkCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2878C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430732578.11081.8241402834379691055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde3a85670b1132baf6a2597744808921191fd41a639ee82526f929e0e8739c1
Date: Sat, 21 Jan 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674307325
