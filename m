Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAF929B0
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EAFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 17:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676827085;
	bh=z+oaYk3gqdc9TTqpcPLl5F2x5yP7WnSbl8n90ADYPbI=;
	h=To:Subject:From:Date:From;
	b=GtZJG7o315vvJwDILW6F3n5oIsKgbVVRTnT14Zf9rpywmhK8Htu1Wc0QQ51UYgKli
	 6dH+vtdrahy/bQXHUcUkFphK9FO3kXpi3YCiDuc/W74KN1Bm0HFbcq8Tvkuv5822Ba
	 TF2XipOAnpM8JIXYeCVqkWUs55HOtZPYjCsYUtPw3qjkD0FdSUyvQEzo71W5cG2coK
	 WBgRhHblC5DTaI9Qnsn8B5efCX2VrXPVNaf/yw7LmXcKrZH8pev1ewANUVmRKcMzg+
	 YqFoeL1+8J0zaq+5ILoKPuPpLPHmwInlustNNBXwQnkIhxP7tGGwLQzyGNU+QQ0i6y
	 4Fi9eoR97+3qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC28C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 17:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167682708575.25468.4273283099762218432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85d08526b9924f86219aa526c2675481c390a9dce2da58f32bd9590bcd41ebf
Date: Sun, 19 Feb 2023 17:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676827085
