Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142717F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+iaiqeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80408C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704685096;
	bh=yy572KcATAy5oZwTBLlNxauBU20Ztl37WPw3lqpE8dU=;
	h=To:Subject:From:Date:From;
	b=q+iaiqeBgXp6fzxnanl1KjPNrRnpAk9bEbeftme36MV83J4KdPnKCwauzS2Az0Zkb
	 beNYGfci+bIJdwXfdeljzpGkC2lhjcPXlIaD81czAjU2xUeX7T64MEi9y5YbFjXCQ0
	 j62flb2lYxYHGpy6YYSC090JI9MHujKWdRykuXAhXBycdQuT+S/xjpXKJrjXp4jeo0
	 qA44UXKNlWpWLwjgaTmzN/YH01ASvL5S4vWVjMOYYDBtjlSphzgValxajmM/AE516p
	 9Pe7mDkNxf8c51F+kVYetEUFQNKGotE5Cwk2NlXkY4VV9MIDHRahamr6XKd4O/eJKM
	 FuunqCL5/98Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612CCC47073
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170468509636.8071.9050998018589853657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26afe91dfbdb4619866b3c93d33b373be9179b78534f326203c211c682ebf684
Date: Mon, 08 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704685096
