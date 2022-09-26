Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B300F46BB
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D04C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664227853;
	bh=ef4easmh3+TfNEOquscpCcpPXVfOSdGkyLn0MT6K6dw=;
	h=To:Subject:From:Date:From;
	b=LFwsSWzbQxIojct9BmQ2NEuQPxiN2yFIZq3VOFM+At6RFqNyX9v5wf0GLdXfn/4Em
	 h2KVzTJELC8TVU1ulxvmhcwhA3oAfVDPg88aOulT/QKQirWB3HWXnlU7XSb0HZ/Y8l
	 SB9sSfFN6USBy1+m72hpFlNZAlDuGmIG20dBTq8XC3cJiwzkgaVclLUf8+oPnsuGqr
	 bUVXXxzq0eqivHsypv4ZkxvYKEy8eDufltXgriycaU/q2FrIWFMAbIBXVXsJYsd4KI
	 xvjXFdfQz+tRLSPm0ADQ1N/3lPoX9bJS8m6cp32Q81ePB5Z8wXE/s0s7tD2OXAtw9q
	 roqynTVABmzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59EADC32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166422785335.13300.6830746304595086269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1944dc26dcd7629f5027e7aa9899c03bb8da2f2a8cb038cc11e2abb3655bbb1b
Date: Mon, 26 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664227853
