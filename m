Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34322EBE
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3114C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681779545;
	bh=pLBd2MKEip7MUrMyiaXbVWc/2OJ8NfKFg3VVEN03SEU=;
	h=To:Subject:From:Date:From;
	b=mVPP+E4LBcfAq6Xv5QysgD9V4Rs7gpaCSi1ClhHnPUZaKaJ+4e5I95fuS/hX2+pEJ
	 YjcfIrFzwsd3BuxhF+NkAgG7Bj9X3cyjpOf1GqM51Kj7m5cwjZacJ3gHLppwuqcpFI
	 jBhpCEUUSwfJMsjXnJuNXi1A3N9Ue22X5UptDndFfGjjvxbggsw+BHVJjdPXog/AX/
	 3aPELriObAZgLosCuJuuK865OpqXITHALV9xhEJsa7JwuFBDCKI0sPZvimEXD6AEog
	 nx2libjhBjewUg95ShM5nhiAfX0o2YhXrOE97uq5fFj1lR9FQhtK7Syi5+to9MbjWZ
	 4z3Bed7PCHbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC078C77B72
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 00:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177954576.18526.11476776347317587307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e617c63161ddcf2563b6adcb222a5867157e15e6013d199f44be25a06147ec2
Date: Tue, 18 Apr 2023 00:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681779545
