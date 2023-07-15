Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843C315C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16CAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689436268;
	bh=KuwFTEM5q6dTN5mj/nD+y0/aVTV1g8QySDfgTHxOg9g=;
	h=To:Subject:From:Date:From;
	b=WQY3T5YJ5dyOvWp58Aj5fPXRfVLq71bqgQWhpAsggDnoW4CjY/PYbkRagnYRlAVed
	 GS4zrcsD+zd8qdvB+pVGOb/roLz40/W6qcIiCzsYqRZ4gARDE3Vy4KN5QQNkStw3Bc
	 a5o3tHlbQ8IxtaNqRG4OF0ax0fG3aAqsgx4F66ZJ5QAbZe5QU6yEwpu7cQb9lvQAsG
	 5+E/kgsbv5KHqhGVNTlyXyuUVLJVr167orH6D/I6JRShgkFwe9unwg5UDcrgaFsPO1
	 9YBHwvfJ/jgR36QJei90dn+KHfoAjI/9y9VOXUFtXdX0/m3dQJXmTz6/jHfDkfPKp7
	 Uxe+DDA6aj63g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A7C0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168943626869.27105.9492490588538692078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b2cc2b0af50326cff1c2446f48feec9fcc307aa1a49dffac3664c6fc85bbb2
Date: Sat, 15 Jul 2023 15:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689436268
