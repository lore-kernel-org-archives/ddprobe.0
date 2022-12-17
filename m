Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E738F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D8BC433F0
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671318087;
	bh=A9nuUPPv8sXIRqCbv6hxnuHMNtGedfdcmaJEqeFSu/0=;
	h=To:Subject:From:Date:From;
	b=csidVi0IdySFECvSxF1sLZk/ccg9bAIrlG4/0K1N5VQuY9rMp+tOCvCzj93N43bBG
	 YSMw/03K0ShuvGAYev/7V3gagRgvUB8qAaZs2oF08ewFclXehm4RLXqTH+yKdFj78W
	 43Jb7QgeZTFn2NKK69ReR82ZHEa3tOq26Mxis23DUQUUuu6PAfYnFDT69dJ2S1P1fG
	 QhRcwPwkfxAjpjX9W9O236ueUMr8+UxYZZEAJ9gH/+U9e1kPiZl0NCxnRR9q0Pc6CV
	 e7srtFZODK0mxRYwrwW2q4jhkO4OmEY90kLmVb+jRrregxIHRsxRtBwJ6AsqXOOsHX
	 KS6Qll2GCp+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE95C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131808739.19933.9348615678129241007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20471cfc07b71e8aa78583538b1078fb98be54c8bc76d23045b99d061703413c
Date: Sat, 17 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671318087
