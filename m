Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACB5320A
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4521C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682023025;
	bh=BRZsUA91GRT8W2Em7KMBgBEQZeSlpa8S0Uq69HRXCI4=;
	h=To:Subject:From:Date:From;
	b=qDxjBLx24jLRnwZvZxJfYkHemBDaWDJT3u9RoV8iEOhk5S1xPTsrN3znJM49fduVt
	 E7N9dD7GqTQX6hbidcOJwlftszRjaV7wptx85jMGgRXC8BmqsjdvYrlwCm7PfxxGvh
	 7Fr+FqEvxAkYKQmTbhKLSDJDR8kNapUaUTQEoGGmd5RbJVM5ypo4ACZW47FQ1H9MTG
	 rk7imM1sq4bVK503dQ2QDX2kCAp+fRg6v1bufvHbJ0eRs3HKFgI/nX6EsjYdEFXlxN
	 06Wz6xu5udEZszAgnxEA0xd/9qoF/Or7kkODSu95IwmbCq2Vnam3sGK0KxzLZ4maNX
	 0EokgmQCFRcgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8597C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168202302581.32255.13542981085916410676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ceaa91137bf1a5bda9cf8e2feb9349620c97327dd70bdecc8f704214df5c997
Date: Thu, 20 Apr 2023 20:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682023025
