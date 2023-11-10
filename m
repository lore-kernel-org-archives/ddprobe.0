Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254FE1DDC3
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFJBAoZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A1F8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699631896;
	bh=r526OL9ki9GNZPIH+DGeDspwEoadQI2tIgLVaUEbF9Y=;
	h=To:Subject:From:Date:From;
	b=PFJBAoZR09n1ZwuaPvyI5oul5rLlfzog36L8JeyuXbLsGg1iffGZiviYrJGty/XJ2
	 PRofQ2wWWqK/d4/2c2NxP7sKtO11krzK2oKp/o/pa4oWcphUNPnF3ATuZhxuJOmqyJ
	 C3/NM4HXwD3+HFbhoEqQ0/Loar6/mqNYtKQoudkPiR2M1KEs9bNa4IsUM/4ANNR6nC
	 OOfAypRK9rgSZPvKfkIV9o1xG1Kw6ZLDbDlgVsjTd2gSwG2bq60jFj9shp5kj18t8F
	 1xiYY/avh4kGMevJ0VafFGcsKutP38s0PaGdVI2cEUEylH7JbmF1HlbNZWj0t5epuH
	 6LOlI8dUmLhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752DEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963189643.10384.15065620479190830174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cab63f91cbf98a62a22761d29f29ae0e76c7be5b730dc6088c57cfffca37d4
Date: Fri, 10 Nov 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699631896
