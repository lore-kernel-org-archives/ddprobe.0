Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E694A10EB
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6E2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668402054;
	bh=QvPq2BjWQZV3KWvy0b2ja4MsxwAUk08O5oKIm2lgfII=;
	h=To:Subject:From:Date:From;
	b=ISswUzuc6A45LJ4n4A1KZB2M2NYXxMAa4M2VncBB/4kY6qMC1xIYudFPri+vOQ2vN
	 sv2DqAzDQj82YEZWXUdvooRv8Wlr/0KG3ccApBCcwwujRqDZezG79mLqgMwg4KQ27t
	 SIDPJDPHoXb49gT3vVAMFDnjFnxkFewvAuoS5Pv9qGqQw2FUaMq1hrQYOs0GYc4Zm/
	 YjIQ9DLikjqJkJ93G43LyS+b7VZlMEEI8AucELKIgLTcvEr95xu2PqX5yoRiD0N/17
	 tAZSFy9J9NRKKwh3w2GN4mh962mg/4waMGd3nQTuLeBDX8VPCK0lL5+qyeCuiMpF8+
	 1LOmAWAaL+BXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E566C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840205434.24989.17181110599416968381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97439f71c355be927bd009a1013206350c0325676d1b6c26ee22843608b4350
Date: Mon, 14 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668402054
