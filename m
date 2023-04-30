Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB323AE
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A67C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682899085;
	bh=8F4LPEhTxMjYweATZI/Bzxy3xF6R0znwR1RJiQnOO9c=;
	h=To:Subject:From:Date:From;
	b=TJaBtwUyFkrZMuPLh+dJ2RcLX82BlaL8Lxqdj0EYFdT8H+9eaU3pIODZFs0swVj7+
	 k6Tjzoak7PLJf1hna1lau3RV0FeJFQevCHze40qnbfenJP5Z70oLqv27nG+CdTb/w4
	 ucTJEe19quLHTVX+1Sre77VV0k9ZMnWJrTOBYRn43Ae1iiek+ZmOb5R3IbcNQxbqQW
	 +3Cp3oyJgnU5cWJtGz/49vrgHdgNQmxAdi05ePxkDscbZnFcBrkVIxiH6ZrpxwgvEi
	 pjg5sXf9Wgr+oTziDsXLcZUzYo2SfIP/K91AIK7tnbGJsmX/Q6wEJDqg3krZdGBFGK
	 d8glJLOiSUlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0539C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 23:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168289908577.26494.1426794463854697722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664174601f4bccda7b231a533d452f995644014eca91ed8840f5075178cf884b
Date: Sun, 30 Apr 2023 23:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682899085
