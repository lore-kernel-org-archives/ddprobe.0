Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FAD290A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9D3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661611852;
	bh=6fC2CFZINP83q8jXinBeDW6CwdjdZh8gtFEC2G2GHqY=;
	h=To:Subject:From:Date:From;
	b=GSbGLRKP+lVvsTbpNe8JZBtbwIwGpQ1j7XnRZMqt9XNZ1j4Xhfx1cnM78cLFkNhIw
	 VyqEBHNIKpBUowNNB9pvOdyqrgZGrrpnnC5e5FOt5zEMGYVbEu8VGtpuENdpePfzwf
	 4wcLOknkvl36UxXh7XkQgaCNgWXkkS+rvkYxOK5lUGCbjFNb4YkEr84aLnL0L79khR
	 vzHovU9Xxuzc3U/6UaTeC8FL99TAfJaZ6NcdaXyq/J+h56zQsD5O6z1gTNGjbDx5Hi
	 p8tOE1XhjZvzk5nmIUfeb51N3MiqzwGNmj8ceTZqNyWTLIIKOkMtbn2puUfg1o8bwz
	 FoZdpbGYAMWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5106DECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161185232.1705.17786538769205573793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1eb9d6a11145157e53d1a70ab2f1ae4afaffd7edfa9a17e971eab55524fdb6e
Date: Sat, 27 Aug 2022 14:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661611852
