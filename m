Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAB8BA24
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97B9EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671055287;
	bh=EoaHjkqtf3OO58s40IlNsmm7vY6Sz3mMJkPFjakAWjc=;
	h=To:Subject:From:Date:From;
	b=WChmdQLLz508MiUd60PllnOPsX5YZqZiOu4CoJtbI6rU8EUJWs3faB00ZGxywl4DA
	 58p9L9KQhyM69BHQslhkwvfXHo1V4vuu9WJ9s207SwB1OQ5o6XSzYPfIr+HbNRlHeg
	 PCHsJmXXzPsgfAjWHedc4XHSGAnrnN04JnACnF2Rvnd+3LobfITNXX70CITzvCyyKf
	 6sC/K1TNIJzW+tRIUK6VjgR9UpO53ndqCQihR1omz8rg3eor7j0UYkfADxZ07fZmc/
	 Zl+1hgw81baVOLmSSyrF1hMe2kmmxzOpO+2DawqKtsvcEufZYcGMQt/KNLjlgo7Tjl
	 uc1Wej0BowxkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78352C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105528748.8511.11750921208666351145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885368c4d586e6c0bdbac383c3b128ca99f6382e3cd9353a67722f325957e9c0
Date: Wed, 14 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671055287
