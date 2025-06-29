Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0321F22FF39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751216994; cv=none; b=gA5z3DDN4DUptkYTSicSSqINQX7Sz43xUR6vWXDIV0KcN+9ilA7b2+Tf7xHdqgNX9LdvMAD2S6Mf2Gironn/ScvpAz1QsGjxo0j04sHeRjykVe+eW8eC3jEYqrtxRPP8Xj2NMvB7aIQNebDPnZoCSCEEfL2g59BqCXQQCEAoxzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751216994; c=relaxed/simple;
	bh=YRtFD5qCjpldWUedI/adx9HiiUgTOcSpkPjfOaRquus=;
	h=To:Subject:From:Message-Id:Date; b=dg4G1Zd4/UDvVZ/QqjSxH4clkF0UMXzYbciCqVBgRW7OrTM8MUUI/GwunvFYdwJE01BrrqGcq1ilVTc8/7L2qVV6lRAVm4iQHI0267EagwRwdkYfa5dskaPaZ5yNpPOSzflR3O5qarEVwGSuwS2l8hd10y2V9/Nwq9jv+tt9Gds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7PBRVsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7PBRVsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E46EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751216993;
	bh=YRtFD5qCjpldWUedI/adx9HiiUgTOcSpkPjfOaRquus=;
	h=To:Subject:From:Date:From;
	b=u7PBRVsv8L9EnJNq0N4YZCUOXmuvwKganvTn6FCXxToA6E0bmmiBiPc5c2BjKJyH3
	 09Fm7gvAuGLfyD8aox2B5iqYHq+v3EVi3mfib3D9QBMnrO+W8yKCeVpFyFo6C91oEA
	 F6KCPZXtmIqXnMHaFszr4/ekE8BWWr4jco535NXqvLCzUb6cNVekYRNhLE2FjaIcgJ
	 GWj+WFmJUyYh78TbL92RjRm4EiYHRKbCpkh4zvryW9yysPqRQauFwVx9WJfMfQomVS
	 dDm0XA91+k0sYwqUzep1Q3j9vzBioI40XZok1lNWurfI/X7Y8B1MuDl4hmvTSSdQj3
	 UkcRN0iwYP2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC54C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121699357.7799.16615169480013974566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431371965196e363be336e9a760c1c1ebb07a7a7057af31cf8550ef92a55e827
Date: Sun, 29 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751216993
