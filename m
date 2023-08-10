Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C08C634
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E347EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691631788;
	bh=bH/zajbqTaoU7Ta2nPOtVMVAevlVVV7Kycu1XndSiXE=;
	h=To:Subject:From:Date:From;
	b=YjxnJ/9/etAKotDvL4LIDIjXtL23M6gnvx9URUaedRCsm3WITdVG3sze9n0exYbqc
	 Wkg5t0ZoMbrpKNC/Paa9kauGUATN8Pl+RS6C4fDGWh5JFdgmTy3oUd0C2J3gor+BG2
	 NClUrjoU5xICkbqcgKP58eKv2cuYT6xZ6aXtp6xkpoXqBb0WbYwqxhZtFAxsx05Faw
	 MkJjC4GrP7yvqCbHAEvsOYizHXCVuleA8P9mOlyAAe2Fu9ufl9aU3eIp03cB0W4Ne5
	 +c6Og18g/St+v3nqOYpgx6k2Ufu71aNw7IJMBQeU1iKV9lOeHkYLZyRbLCcL9HPp81
	 Y4Vn1FKAc05Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0F6C0015E
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169163178877.4321.18331640589367320803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3f1e2d0fa6a42ab9862c09b653418f5d6f2fe309b090174925d56067829daa
Date: Thu, 10 Aug 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691631788
