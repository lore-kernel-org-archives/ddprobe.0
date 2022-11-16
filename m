Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57B57C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFBCC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668594654;
	bh=rvCLe6vdilLJEnkTkzfaomGpC5w6ziK57w/DbWGYgvY=;
	h=To:Subject:From:Date:From;
	b=ZhB+fpA0kup9ZN+W1WrwJOqYHA5MYlQzxcFqFH0MBByeT8ysLY4dIvRgfwMJoTDDO
	 pGJ/eq/f9X9HGuZE3StGt19kI9+F9G4wMx+GsWzKlsuQuDRdIO1wnwjW4FZRI+Dirl
	 SoyJ3GbMvoirfWNhKQ0BrchcEW2EGcZ8iiuX/siYYTaPAPWEtXHh27rGsupO6c4v/E
	 T03Mv4nFtd+pl42SE+eBr6lql9f6SoN9Xe7T0L3YCk+me4bOqSadtVMp7ln3kGOBqD
	 KtCDVH06o9TGxLfImS/eHAJGpgG7ZEF6YUgP+ZwKUeOWCwSWbtKrFIKz2WTixbXZ87
	 +mgmUOrNb+tfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EEDC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859465432.7109.6952520809396821800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735d6c7e3eaf1058ce1433549f69d16ffdfc66574c9125e8ffa3b5f81e5fadfd
Date: Wed, 16 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668594654
