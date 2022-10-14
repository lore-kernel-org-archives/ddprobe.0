Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58CF2F3F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704A0C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665790853;
	bh=SIIs07/bmj/aLjBAds0IC6Hj1rV/UwrIR6C7Rx10CbE=;
	h=To:Subject:From:Date:From;
	b=GV0Dn5tJlOSImk4m/p4tYM9Y3JnP/KC1OP06nLapug+Dw87CpqagODQDXckRKrJnB
	 1d7pBVFAi7zIXrPYNraO+aecIVIEqqjxzcUz913wH62o62MuYl45TVcaYaTRwIm9DM
	 aUk/jOjRQE1YTdQ6Wu7abG7kCd1VZ+8tVjJ6QwOZ32ItNJ81osUnhJ81/1ImRR7CBu
	 ykdYS0waHDuZqAVCl8nkHd4fsmQtjbhqCrNyebnuxvfucv7LW84G+PryYQwxFuwdJM
	 JD/UPIZ47lLWNfT34+jDyc5ISJHAVdzK5EsUhxGlo96/ynmpey5qVG8fzCqVmVK8G8
	 lLL5KhUMJjBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536AAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579085333.11411.5791823694768779452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9db3fef6490cbbfb05b5ccb65f6506aef6336b973b5f53cdb675adb3432437
Date: Fri, 14 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665790853
