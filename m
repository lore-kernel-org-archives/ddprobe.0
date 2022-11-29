Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA617C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F44C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669683654;
	bh=2hTI5YyVHQ9DSkN2elnXFRev4VnZ0yQXiNYbHdfTLMc=;
	h=To:Subject:From:Date:From;
	b=EA8U+4+wBD5lYlizhoh69/BkDNjSB87mUTiXvVJNqi2bzc87FWj9p3kuVUO5yoV/K
	 FKmLIcyslAkxK+oUf+UEcPlk8z0xnNi2yHxqN1RWEt4xiMaIBEl2KWg0BZlqwZEZIt
	 lwii0wRuwWn8qIeLtyyfefff2iYDtj1Uc9J92ECa/HrhetrTa5b35LVsWZbbLQ+HIP
	 JXq9hDPXE56n9QeDr+zMEQEyIuas4yKyTFd7U/dpSaSqk9oightzz/SPHGDOnQzNYN
	 sMJjuEr0n+TkJBYvmzebSVol0OW9xmN4FFp2tCbS2brNZqDLXfEegrA1yrcB7/5Oq6
	 J2Pfg5gjbCMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B90BC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968365436.18690.8366383956185528217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72acce4dfcc13ba433a12a5806d27bfc1d5783770b848f1a1e7a24fa5b267f2
Date: Tue, 29 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669683654
