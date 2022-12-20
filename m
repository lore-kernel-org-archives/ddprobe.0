Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6C923B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E557C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671542487;
	bh=8f3FDMmgY7JajPwClCgkJRkIyHkGWX/0vnBoIrlXUks=;
	h=To:Subject:From:Date:From;
	b=fpfZ0s0fIJqqybMWdg3inHNnbwfWzWhOkDbKxJDE9heFUFruKVGYzvZnXgCW+7MXy
	 aEiZeExEoZldWwDQmKLGKP2t6DT+5qqcmsaWRNS2JFDeI6oVT24ilCFil1K6xH2J0c
	 FpKmUm7ZcHJsI1OoDVxO4HsJNPjxpJYwuv6GTu0pjp1+x2RQFKw9ioO8JTJnh8+jEq
	 Cu+mD9M3vwEJJpZny94CM2qpjtB73VNaa4a4RjdfmRkC8FHAsikB6NSCPdNQhXvTBn
	 JOe53mEn7Q3sUbipGo3xcoqv9OpgC/TX/d222/gA+X9bw6Kjk7Gp3uta5kkXs/BvUw
	 emr94fAay9ZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F9EBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154248750.27088.9767741038132463736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe9da940b6a7ddbebd5f050922d9544728dfa1bd7ead8d76ab9a604fc9950a0
Date: Tue, 20 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671542487
