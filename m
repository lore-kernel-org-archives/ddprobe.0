Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693A41369
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kei0xg53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55D9C433C9
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697420828;
	bh=D8S60lmTm9aozRxBQ2kkqouyRQOBwwMrMSg5TR2YzSY=;
	h=To:Subject:From:Date:From;
	b=kei0xg53GsDTX2EEy1+IlHDd91ySJiNM25JtPehDhQIUwGtrL45PE4wGBBbAyyAlr
	 ETvHoxODy/oGB4JE09DM5j2DSvKvcW9c9PqOYtEZY+Me1HGvg39UCxd1JXzpAp3FFT
	 hfiG8UiPgdXt9mglGKmobACAqL59Zl0bMSUWEq0i/2W1lt7FLvsZioo3+1/lyJCe5x
	 DDbrj9+GIWljDybd/NjIU40HY4mSCHqcL9MmHurxUhu/otScaZ22K/P/P7xJjAdcpW
	 lHvHM8bbo3Q2TbZKr5mh1FwS5tD9JeIGuQGdOiqfYjgv5kmMtdQAJfHjkEBSmSxW1F
	 Eb+icBI0Fh2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FFCCDB483
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742082871.24004.1213491487339314782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c66587f4ada9949d52a173aea327596c449849dda5119476c0bc3cbbbbf8d84
Date: Mon, 16 Oct 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697420828
