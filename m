Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDE22F31
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66EEDC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665073253;
	bh=jrB6O9V/ORwEzjdpq0FLWKhGKzg0SUNj166Yb1597bI=;
	h=To:Subject:From:Date:From;
	b=SCwlLxuZlDQHhaCsfHzfqCCiEvb8DRU+y36ojxG/Wx/Jjf0ZI2YkWGgsReX+AN/oH
	 bdi6hqxy/7VnSyDDtNdXp1lTVx6FLL2cZZMsHUOpQQN7Rj7Yc8/JE8nW8oqFNjfsei
	 m3nzpj+eCFZC0KKtlG8HzWvtFBrj3VTzelf98CXbTaLinBD1WT/hsq2AzEnnS74zhs
	 hzbp7mG1wtE3kTnEIuFfDmlvfbvp9qXtm4Sx35LxnYTGyNe81jB5Vn6Di24yx6YbUE
	 hId9toj5zUld2mUYvST4Ez6s9T49KGOO/8wXWooDoP+41NYwyoPO5GOo6d0zYszVXZ
	 ZFVUtTHKlokuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1D4C4332F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507325331.13162.5721878961378637610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2c66ce749431c1e29a3e4d48de33ceca37124d7c1dc9ea17f37fc7cdac5fa3
Date: Thu, 06 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665073253
