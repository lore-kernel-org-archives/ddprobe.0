Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A237B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEC9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666768853;
	bh=Q81D6pWjPFERzpGr2ho2wpwKuhZ+nTY1vkNIfUsIwZI=;
	h=To:Subject:From:Date:From;
	b=HlXWvklUNWSEFbGzWnMnz9TmvcFULHnv0tGcxLsC+BHn0X9PIdgOW8cCkVXHoHGR4
	 NGRrfbtPCGnndmpecznARx4A4E9x+hDNova+tPmWU8IhOq0jtDvrzrKV3fIlilMRhM
	 4+lBHzRU/rzfVADnlSYlc6f+b1RNZ6BtZaDrretXYUCXFUP3MvgGvMm8bnHukaLvMo
	 oxgFvwghP/Df5rN8RyPvgHdlwlxWoKWwosb/i6LGIEIbRZdFAar0x9TB5cFL7vAo9W
	 4oCuc4/WSqPaxu/xowLHJv8O9bzqkaIvdN4jV4JoyEiwH2dESmL3Tb7wWRU+RGeL6X
	 sVlPYNMwfklRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509FAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676885332.30234.10208604627854087918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ccebb315f85b9ce5384f7b5b2474c83eb5a470ba23f985222c039c3f88c6b3
Date: Wed, 26 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666768853
