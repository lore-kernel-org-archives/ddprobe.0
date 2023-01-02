Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EF020EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80921C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672645287;
	bh=ZZ0uVvW6JPz6IiDVuNxNW+Clt2gFbHHjvV2HvMtCQ+g=;
	h=To:Subject:From:Date:From;
	b=mqaoLdT4sCFtbKadavWcAYsRNItGuEhpa0r5XBEkPmyx5JoS/DGr8VFwIWJvYE32B
	 AK34BW5ygcGHGFFGQm4dxeqP/MTzPxxxh30Shp77F5GTZaLtF7aa7dk2CJey0gPL35
	 BXAht0ZD3sQtiDRJsV/E5peTlx0+Bgl2hmZBUo9yyn3Qv24Kq/mJfeFDNzMWfXsZQ+
	 IPbVJ2MQeTkQBQdWFYBKmQxsOyctfYOOlMz0rkc94lLyp1/tadISkCf1qKWPR14Qus
	 cUAenOmOpJ4Q5oYXgHj3++cb7kTvKsE6RugdjHWDb51Q75fYlkOvYWHSEKe9vptQ/n
	 1TSU9WW3QaSHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AC1C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264528738.9600.2613434267662428326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c5852f747b4f7c598e10d922194c4c51c855bdfeeb7531ce6e291855784f81
Date: Mon, 02 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672645287
