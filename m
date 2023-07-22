Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531DC7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4CBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690046528;
	bh=5MBh43n8KSfXdV1WmfwwrH5Ll1ljBdxqjdmvyNiHeps=;
	h=To:Subject:From:Date:From;
	b=lOswaYa9Nq3fHZZaOV7yEFMhsL+41J+fO7zBs92oEyKjMcLbqSdna1aKMAlecC3Pu
	 ARrZHBkNU81IYzw4XtjBV8J/yrZBOTMq7uETgqrkYJmFD/Zo7ww7IuSyTG1acPbDks
	 ev1A7V0yJ4L1qSFIR70bLNj7yhnJxHeR7FscPeY3EvAQ0pwqjDyWXhgy78E/DY6N0L
	 1YR5rF0veiI7JTWHr0XhmAWnBPV5Ok7tgir5KQ1IiHriiRgAgFXAk4JYYMcxA6z1MR
	 vfoyfjCXFdCRl13AnQCgza2ZLbBWpEfuRpVQTDceIpR1zNmNd/PSdfycudo8sV6i81
	 XZpmI30Btfn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EB3C0015E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004652870.10651.17866934342309178279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1bbce5f723df2f919054b55832c02ed2deca7ef41f0540365230a8e81cd40b
Date: Sat, 22 Jul 2023 17:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690046528
