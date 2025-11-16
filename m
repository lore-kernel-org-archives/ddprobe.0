Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF05A2D73AB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763303455; cv=none; b=SKAm46sgOr0ifyGe/lDwCkdNKCrJgIfnI4H992ipd3E9uTJY5JK5zIdNLhyda3BWkgeeefWlYvgAcCkOHsAw3Mu7xOqEpByUJgwSXrJnAXPlhfA0L1NGXLb3ZhdMlQ893QmJbYIrlgQedxxHAUnzXTLTUCxlaOP/DFnEOcxAO6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763303455; c=relaxed/simple;
	bh=cMJZLUv/YLF/Cy9J0e78YXt3lS5VxVcHp0LmmB0HeCI=;
	h=To:Subject:From:Message-Id:Date; b=JHXGy8ljAFUBgddh6HC9FwiIjyBsTFq5qk/3amBf1CR75I2lTZDbvjiNAgfNH+X9ca7ZBVyqxywxnnMBm4ucxaZAnfWTi1+nsq1GOLmZ6p9eM/B4F1ZyhFZKmA4VhMg5xF4XlsiIFuavUDmcKy9Wz157FvD2uo1bhrn4/l0RWWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVxXbjiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVxXbjiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66FE1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763303454;
	bh=cMJZLUv/YLF/Cy9J0e78YXt3lS5VxVcHp0LmmB0HeCI=;
	h=To:Subject:From:Date:From;
	b=pVxXbjiQEiwesrbcFthtVl6L4yejUh0St4mTw+C1e/OvP1thzkWPy2/jGNlSC806B
	 iqGaTyKyMPV9uBUTpxQNAZwA66N5z34TV3ZsH8CVYa3byqvzYZFcppU+aA2ukoNSGF
	 YGjsZ+VZjOKBAtT4AQKQa4Qt1vxwTMk1hs6206eD9+uowY/NsOnPPljbpTQ/IPt7TS
	 m7hq2KQa8t+HGF7HglzpR2dSaQgqxYT4XbRPUBL3VKeMtGaaHhXBgNtIa2xfrLPKL5
	 qKtmp4Gl6qp51K7E2oR0Z3VbuQR3JE0+mgFBskLrYafaBjb5V7DZv6HXl1zNH5XkGs
	 CgNrJffgS0gcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 440ECCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330345412.19852.525700862744243981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5220a113015f16b346ad50f8457eddfbe4545b3718bc70d6594e92e9032ffefe
Date: Sun, 16 Nov 2025 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763303454
