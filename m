Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4C228E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC7FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669549854;
	bh=KvE06z3DUiGI6pljsZP5A4HlBJVb+BOFOPUH7Mf4MUE=;
	h=To:Subject:From:Date:From;
	b=GL3ZoMAebsCNUc9dIrTXLt9nUyrtlqazvj5qGBI5idpCqXPOQuchEHsYmYFqRvuk2
	 FU/eT5/6kE8R/1Ysmf1mZ6K3nuPYXMFokn879+PWbI1xAt0LA6W7591xN/5CGZ1Wv9
	 u785J97rqnk3Z2R5+vcGVYTRryMSfvbqp7TeV/Q6wFxc9UwYQgOOrpQ+qmWvvBMPB+
	 FkWcGuxdiM31cVnupqPOnsVqQpNGcLnswbCnrWTMxuxio5szxTQfJWtePHLrkT7yFa
	 /IXqNWp3V158UqwM3i/8No9lPLGfGkpwgVZ6apJbb5gMW7mxjGT7BfuqCUA7tmsdQv
	 X2LzrIowtDDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C21C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954985432.1374.5427976408604671330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4360d862f4d52388c81bb5215713b152f0d4a5cca46b1cac19d346df0316835
Date: Sun, 27 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669549854
