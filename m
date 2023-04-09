Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF381C26
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 151D4C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681038066;
	bh=qA8JlOYk6NA7Hd7FNi2TUtJnGoZP1HDIQcdDFImQ7hg=;
	h=To:Subject:From:Date:From;
	b=n6nG8Ftv8XGtJdNcITjEbA9TN20FZGytwNG8uVauu2wiG+Ldw3YHTd7AWr9jt1u/S
	 jOhZWGJ8fR7s9jqge8sPQhYYWEydphX2JzcZb9NtqOSJD2Zf/Smv1LDy/mbL6CDxlG
	 BHLHc37rSjTYRgzJ5O5s5NMHxBw8CFDfjyLePgdQwuh2pOcE4qWSEZDJcE3ydr5MHJ
	 KXwz3zz3TluLyugKW5IwVz/5Ep9EK26t2X9/fxrceY8FEaM1XloDTAf/BNf1twBAz6
	 OP8rj6gVBEmK+KOzvZZ+Kbr2Qd2i2zrpHqydore8DUtCllaLCG5iug6OtcRgQdM2Q5
	 /VTLZfxLNWCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BD1C77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168103806581.7243.16082248784133637932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3684f28880958462eb22a9ef871b85211d41ccd19a9c92643da85daab1a407
Date: Sun, 09 Apr 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681038065
