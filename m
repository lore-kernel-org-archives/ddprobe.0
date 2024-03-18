Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF4738DD3
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710787697; cv=none; b=kDyiU5A5TjcyvqvBRFOl9teA6w5EF0+SDbRRah3BUPh0rhwK2NME7EmMd9jHmztWvMEZffsUod+MsB1vHxS1bxFYikJkfRoganaTbpK/qETbm15mtp7L/O/tW1wG2YYR7i6IiPyeCYij57zY6InUox5H3nQeYUGRRNU0A/qo2Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710787697; c=relaxed/simple;
	bh=tC72EhtWnFYWMRTDcOS0gvAC475exQZkzn0GRGAhYFo=;
	h=To:Subject:From:Message-Id:Date; b=N8Wf0Nka256fPwN+NKYnaiN1kTEZ81v5T+twZ5aL7u8dlUDHyU5KpFCuDNL7j0V61TFV01LikE1SXSyjGeKpCI6qKnKyAlrdk9V7XufrH+MEWMRIirN6tunYhpC9SCzAee+KDSbhw36UHzfZL6yGq3T7FiuT3YRWLzozyFY7mdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjFfTvFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjFfTvFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1CFC433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710787696;
	bh=tC72EhtWnFYWMRTDcOS0gvAC475exQZkzn0GRGAhYFo=;
	h=To:Subject:From:Date:From;
	b=NjFfTvFVEDxOu9wkbYkZX4tvgxW0nnzYEu5AezMpSz7WNxmU0e4z1bRU4v/Tr0N4q
	 Z3cTA96GQd2AhDf8FIjLt+OdQfppy3LZPDlgQavMvCtG/87Rc16yWtl2I0kE6vx3hY
	 MWBonY0SYr6ydBU2a00BlTv45Wi+QYkyblnZUi1iflHADLRKSqkSfJDsb1rS8O/l4d
	 hWrn//dcIpPkAEkXVsM2oa/T0pqpSf8w24UDxEi6ZQMEEB2DAV1AZp6q01PPqorb38
	 6LRNTYQ5HHiwNKGbXIZFy4ibe8hn4V4LOux9zVthiTwHzP9g/W2L/hGsONhxd+8YB+
	 IiMQzfCksfNTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C8BC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171078769638.11386.16564498623514241226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9d4924c77db6321d3ca33ff072f493c2fe2a3e26f1a7d4b1b4454abd0c86da
Date: Mon, 18 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710787696
