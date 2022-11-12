Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00B77F5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A72C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668256254;
	bh=Vv8i5t4RQiVV4HUcWVHqiE/a4bYsfvo0XgREmdPkvpQ=;
	h=To:Subject:From:Date:From;
	b=EZ62BfIJPb9KEIWtj1nj43ToD4adP182KaEDmf/mHQlYYokPr9o+C46BF+rQi9+W+
	 5DH8WpzBCWACOdOmle69X2SeyHdkfajZSMTp6DBU08lT+w2r8nSe6fquGh0Tcvof3I
	 2gkpsPe+cUrmHjQq1Vr3s+ueGugsk3rMnE1VYekTZZYPFyIJ8KSFpmpOHVvseBjvUU
	 2imLk9k/nIUnUEV1cQj/arN20DjzO+d0INNGPWTP1MaTp3ZnxollvhAp8rIJh68+YW
	 DFE+0y/6WtBHqW8d564gAEBNVPZaJl6iu7KBDJ+Fqlr08jJMFdxqWyWqXTLSamqqGs
	 vmSTzN1qLLqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D0AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825625432.12332.10258760811469035553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127db67b46f56dde73b9c4c23c0cba3d221bd08678a078f3eb5f35b66e08688d
Date: Sat, 12 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668256254
