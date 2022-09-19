Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7F03D74
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70640C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663584653;
	bh=rWAvmOci+TgIhZ0iBPZMyK00CqwH7UT2hyZuFmktUwA=;
	h=To:Subject:From:Date:From;
	b=qobUj4PaCsX3sSbrR5POE2yxxnl1hoDPtPnNN1UrlAxaYSSz0/4/9MiCzae/KD2JX
	 nAMpWYMGjf3F+B6Kdg8ZqU15TsrAoNOak3VcSx9tKnfhCGAdeM7OQnZgEuZbaabIU6
	 180+VodTN3+S479RsNWmMUZVTDAThvF+qaQmGxBr+wnccnxn8MG8QTmwIlNad/eDo7
	 oOm7P6dpjI3PMaCIs+5fKmJZ9uGlb4IeBeetapwsMY43B5MB+pJLIAllS2hQIdaBb+
	 t7ruXwPFVLe9v1bRQdg7zovXE/h3GbdF363xTD40ZWbYfBkdVej5ttWJZQqBTrstNe
	 tpenhRfjq4tXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A49DECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358465336.17321.14571930105113921156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4760081fc9c3aa539c39dffb8fbaef8e446fc41b2dadd1409ace1a11fabd88
Date: Mon, 19 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663584653
