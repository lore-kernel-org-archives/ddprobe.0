Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FB9380
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7689C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692329048;
	bh=2P4B/jjqp84vxWpkO/1xTTZr3+CqQPFse/mAUOE7n3E=;
	h=To:Subject:From:Date:From;
	b=Pg2QzooKTcafCK1YYqxAaCcjMSVvWdvF4p8k2mTFAEuZKemSsTF33saPz//myGyBH
	 UVKHmWEZLnxl9ndMBQt/hfb3sru5EhFI9y1H2lbbgIG6QM23gMJLZsdZq0UJH4PJsP
	 gFSd0rdp13Qq4GfYIYSiScUma7jLPg+gR+GjkkYXNjgSFCFhDrVV2yyWROMZxWxjcn
	 0haN8Vd1nze68F1VBhEfMm3B8wJETPchULpgwWiCkcEXzEHGYVcHL0Q992leq0/fuh
	 fqfzhTWR/jvOLx6izkDxosTn0sNeVJ9PwjBFAmSrxU75oHlUgsbMijJ1RWOxjVKeI+
	 X83vHGgfVnbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70BEC001DE
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169232904872.20085.16163138908674414500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673867635510efc9ac775cbeb8c1a3547f0351c0b0243551b8a1d48032237063
Date: Fri, 18 Aug 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692329048
