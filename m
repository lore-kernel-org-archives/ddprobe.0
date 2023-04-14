Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931A7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC4FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681473185;
	bh=HFJyBqa6yxVY6/2vBsNGrx6g3jQy7d+DWcj3cFDHF60=;
	h=To:Subject:From:Date:From;
	b=VhnVspAFRW1D/Ivf1FCa54WAQYhTBBA5LyA3BcqKK28aoGmt4kvmguOH95dDH6zrH
	 6CXUfcQkKuZ8rBZwsjwjNOHZQ18XUx4u1wPPoMtpU2UuVAPx9ZPZJY9MMZ64UE43mE
	 nBd+z2dX6WIBW9Wg6Glj/irIKbp+IiQfiO+txyqaORvLIQ0+BI2cfbL7cYYrNTFbUg
	 edi6YChDodnqYbQbeEkbfx6cNad+mrGjIZBbT/l4+mncxHiIQ+2pk3BABETPbkWD6d
	 aZoZhagMi/eraQue3ku2gLAbhaXKIe0IgXNiCNQiCnveCiKMgZEf3OxiJMjvUCGmJQ
	 TSRyRY29pvGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE557C77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147318577.7468.18198679018025578159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e374abb9aba09944b8e717a554219c5e3d17fa4e05b3755560ece12512f7e4b4
Date: Fri, 14 Apr 2023 11:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681473185
