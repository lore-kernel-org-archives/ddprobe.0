Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD1A2105
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7B8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673555487;
	bh=2kkEyok+wxHYF4y4+1S08R2vuSrh6YlPQGwF/E103Qk=;
	h=To:Subject:From:Date:From;
	b=FmUjTjr93qbjXPvPHZNWn+shWUYb+EBf/7hrHOjZ/AjRXj6xAar6eHdPwglKmJ+cQ
	 jPeZzjk2ICfaiuM3TraHKV6S0qruBE+Qjjty1z+OCqACfeD9evrNmokBAs8aVj1gvU
	 np7eYu8MVho6NS0xCVNKSQjHELI4ijuZqw4oAHWLzMGnfZiWxpufawIb/V+EvXvZpv
	 EVHda3kxCnpden43LjRTl99ZKwzDc8PSHKlo/Ss3tnvikfDa0W4z+NxHE5blN6c1W9
	 KCykK07pxrQwYHhcbtQ9unjxxLcLGN08JDunqB8JDX1XLQloTEx9F46fcU2qMM0D5d
	 kroXaxrnArUmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D857C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355548762.3608.17838634497419345120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0418572cadd85e0904f9f776890f30ab0ffcd5296e0856d481356e0b669484
Date: Thu, 12 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673555487
