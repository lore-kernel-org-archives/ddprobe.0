Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2DE33D8
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5395C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674411725;
	bh=x8HXL0sbwFsPD84MNnvkYA5s3CORyCYhzjZqSfZVFSk=;
	h=To:Subject:From:Date:From;
	b=CwWqovEo/CYGueCpD+e2ceHhiilQvhhbSkrSIxaFUs41nSY5ApKf4JpdU55xOdPKM
	 eE1assFWLeC4Se0U48S3XtkqAUnMV/9OwfN+AKqUHgIrhVg4oaKvbqNKw8jlNSh2KE
	 VmilNdnU4CT37jaOREcwKJV+XODPM/AnUEDWQzQurO/0Gjcz+U9S0ezJNDpKJf4aZH
	 Tdhb+hZ5VZ0z4iykOZS2f4hUQUdC+ivlGs7X6Z4aPqJQAGaDv9m4qx14XVHDdhLvsY
	 eT1kPRlYvTFLY4PAvx1a0zh804x5Ksi81NxVO3kv+Y+D1QiEvjSHFYYUfLGrz94lbg
	 M45kSJ2XODg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21C6C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441172578.6672.12268933382700645533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a470a8c77cf0731f0b082c936e25567095675c1b21786e1f5e1923eb1896de05
Date: Sun, 22 Jan 2023 18:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674411725
