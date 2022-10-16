Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ED6803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B812C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665889853;
	bh=Xwldi/Y14ql1KuH5wCaT7s4xvmsYSg7ycZH/NdH0uEw=;
	h=To:Subject:From:Date:From;
	b=i44uCgf8y+OoyWaIAF0/h4/2eaIdavyvJY88CJeT/qvvvYuL7Z8ZkB1lqDx4pfQGu
	 pxC5F/LZ7pkfgAeM/lhZYfr3PFYryHgdqikJfRz1cqgmYfYYGFeS0JCH9BwAc2uiDJ
	 sZOxUYIEijHCOphrtjnq5s7oaXvrrzjgnoPv2ughWZzLXLVYnpisVMaeD3ZUugLEpC
	 maIXhV3ltkMOmRRZft6WxcXKEP45XUEcAaYNENTSvg9pshAy3GIkTpz9F5qjQazmZ8
	 0AA6jrLeTKZftbhUSRg4IkOgayj2N4gCUOy6Ep3FxMKQtTv4prGqy0tXOlhTZ+Ao8c
	 Z+Z80EIzJfsPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51872C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588985332.19590.4136500800405393753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcca13bcd57f824d098f4179d7f02ff826351a3d357ccaeda15d5c4a010d650
Date: Sun, 16 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665889853
