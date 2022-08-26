Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EC8185F
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6928AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661481652;
	bh=VInHTHm/WirhbUR1gupT8D/EDzVR3I8uN4O9WygRU7I=;
	h=To:Subject:From:Date:From;
	b=WDsbLwv4rkmrRSUTd7eTmm28CmnYzPOrlIBrhqni7hnuphkKoCuGzuJQXiHfkLPgM
	 Cih5bp18O1ksFslfoDA2cgdyZuMqvBkdnJjwYunRxQVR9Kw02oVAfE58ov5SRdCXyZ
	 kDkgc+mMNneuvlssaQVbhPEB0ozGU37D7lhcP7X8syKoSbWamZHYEDtmpHpQ5ao49J
	 um7c73hP4QCwxlUDzTUWUPmxt/nIlxpuI1BjdmxVdgZnkjh/FPiKTm/dlMKpiui+uz
	 xNVfS9fU/faldcWGc+rAlBusK96yPTWRtNDS1oanzA9oftRXkH6Qf5BCGA7pw54aKb
	 nMJ1OmYEO1jsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521C9ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148165232.25512.4405726762097072962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed62c5ac265e8882e6864eb181425c6e62354c5cea23076c61007b36250a6f0
Date: Fri, 26 Aug 2022 02:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661481652
