Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3E87E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8C1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 22:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678574766;
	bh=CAbfONbYpcAhLgZp6BT+IIw2IVLq+AI+5aZ5RcsfqTA=;
	h=To:Subject:From:Date:From;
	b=O/S8aIemz6QHS3h16f2v4bCW28aipk8j7Eh/2isFIwHy68zH9Pd0XlIxOrd1ghw0c
	 YG9k7+LP7n2hEgizEs9z8k2biyY2SzuiaAKqUzAafu2jWiNHiwYmrFjGoGgV1CW5Pz
	 csKNrsQJ4uwGLTAWHMM8qLH15ggGwUKLR5uJyDcdyfh+b9RZZJCqDAvflK21iDmipV
	 H64wff2vUfDT0GgdbWI7PojTT1AWi34Aj9oGJeS8Irk/hd19S6v5qotR1df4Pb7Yyl
	 0ijCJ/NJbmQkRPf0zpIFtD99jz2Z3/WQoaHeVbISWCtBe9dHoqBVpNJpzlLWf+KJeT
	 IJOIQoX/iq1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB88C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 22:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167857476574.9687.16591309977541744366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a57557ae0a166f4263ae3a31f14cc02dd9f3b35cd1ab0ffda3aa25163dc9308
Date: Sat, 11 Mar 2023 22:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678574765
