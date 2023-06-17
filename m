Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628B14C8C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCFC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687013408;
	bh=ktMmpeYTsE8nXJg01+/7SU6XEF7hAgxlHXNpLlPccYo=;
	h=To:Subject:From:Date:From;
	b=kFhI/if30wli1zHoBIWlNLzmLBBmmsZsayAEyZhJBRCZHn+GF7fQ5rZCBkfL79CKI
	 IobfbTznKTkk563VG+qSOIaw6uBc3AmjI8MwP/dAMc+h4dhHU1Tkw4KgSZ7sJeNYee
	 CUGAGeZBD4RwInWIXhY9qyIGpPVALdvhzsQe7LgS4f8dTqNhFptGIjU1pXu+qmOy0I
	 9jrIOlurbutDRkIpeZ6HH510HlOQzKZCUjKL+W+4Apbp4wQVxbomyswG3s18AAkdB1
	 RR15G4WVBuLeuek/ahyQG+VxqRXqoI2G2eJQm6oTINKS2TArqS7ePcqnO3kJPldE5v
	 SnyNky9e7WzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39C9EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701340866.19623.16649211097449346970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce583f2a527936e3ce947d706d08619a9aab797e6222979d29c6837e88c25050
Date: Sat, 17 Jun 2023 14:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687013408
