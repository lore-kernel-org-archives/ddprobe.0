Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8F4136E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737190554; cv=none; b=YFq/kkKpRMfLX2UVBWkBjjXzdgTRntJeUhcgTju1wkK8cl4RIVdqXTMtMAdSThuB7S52QXW3aoGg5T/B8TFwSHs8KBmEdX31FAYqxSuw8TpbXlQYmr1I/fTUqQHxdVrkJq2Z6qMSpEX6oflXSfm+5MtJfd2QR4WYxV6yfMR8wNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737190554; c=relaxed/simple;
	bh=UBdNYIcy/OruPTX/nDSGWFTN0bmzSojEnKZrIgsFozc=;
	h=To:Subject:From:Message-Id:Date; b=DXJgp1pFdz7wqT6t5LWUhumsDf9iGChbr+JASz4EHnLwUVtCZA63b1NHiTsyf5RdG+tYi6kYUI2wX5yXWGKZHC+SDUnuPR3QFFczh1QRiXYCuzV9eF71a5p/tdWxWAHPhL2AzYbSMSJEumcEva0C+MlitIQUdBgzV7cTPoTIQak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzawYUuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzawYUuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4115C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737190553;
	bh=UBdNYIcy/OruPTX/nDSGWFTN0bmzSojEnKZrIgsFozc=;
	h=To:Subject:From:Date:From;
	b=HzawYUuQ5t0H6hLjjH27OSDhKPRGuueDixPG+qN5Hbg2XyXwn3rGPMAZQJ6Vwaj2j
	 SVDhw/uj3KLQKpEzwGUn9CoSII3F+5jYiRBN78qTTH7tkWWqcXA9xDN7fDZWMreFxk
	 wKbtW5vc/0PzeRVxjsTkaS4USHxX+63ED5NzRAdp9f1OsS/EdTzQDZKYPtugLFMeTO
	 mScj90G9zmPN/Tb5MKyXqObW5Ku1VD0q+8qHu3+Vua+MGY3qR5Xj3QptFJKtc/aa2y
	 8NntKDq5amqgJ5wGG+itWCUBrk6ddIxG3xVKPDCPFTMJhCxSOTOyPGYqoe7I39fi3V
	 B7o2EuR/yOc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EEDC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719055359.16683.4761887305763312679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08db701e1c69d586badf224d7fbb3fb546c9cd666a8656d680ede830bfaa04b
Date: Sat, 18 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737190553
