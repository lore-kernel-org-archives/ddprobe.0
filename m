Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA1643
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EF0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675841405;
	bh=OqtT7BUO4YZ8q3hUQh1QsoQpSDtBjWFIbEMILeqNrQM=;
	h=To:Subject:From:Date:From;
	b=MEvVlzfKo9NjTBbeJf5V4GZDzaUzoTA2254DFm5aAu3yA55ZF9TurWx6JLsS5MMZ1
	 4apPWDqw3x3zv4EYvZon1+Co1FmEmZy94R8QfaZJeJbMOQFJjcLVmNXOUKRUZZ1h+N
	 Zx+27oJM6rMKSa6ySGOjEdWg+VNGQkOkjyzO7ixn+m7KxTRuAnyyW8osKpCCXzNJ3F
	 E7VIx86kRzB9FztnDL65b0Qt8tYOCMdcShe9SiIcYPXuXwnIMut76YVl/F1+1j0lUr
	 kYWi5mHIpEuKHh4No4e44LaTC88Cpj5kWHGl9aRKEqDB6AnywBVExKDiU2wFcLbmCM
	 IULW8t/wnAnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B727CC05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167584140572.19479.6175471041584425036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562856d148fb6ff8efc9b5da87e3dccdaa3c17821ee59ab4c48fa0b7f9cc6779
Date: Wed, 08 Feb 2023 07:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675841405
