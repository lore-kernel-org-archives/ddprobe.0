Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEB62874FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774454694; cv=none; b=Sy9S6NRAoQhWLq8wa3P5AS+TE9FDcTupa5RiE1UgJ8+5BuxTNNtZireUfxLN5RJA5eEdoHqle60U+wFGaZwnJV9txuZuVR/55bjuMpmISgh+7Oa6sma+lJISlZzkxYAWCHJhbVqEmT8+WLHMGw8wu+6jCqu+k4QLL9MI53vr51o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774454694; c=relaxed/simple;
	bh=KQvaAmwPyKNoXHw7CmcQ46dR0hbAixTvw4BZjZruwZA=;
	h=To:Subject:From:Message-Id:Date; b=R/f4a7UHML0fUJWrIXbErC5wsL9rY3mje2WXs2rX94X0wyBn1TweWwvHn1MqpTqjeYOijexBVcVuZgbsf+MvKI1R2ybJbdk0saisCL/5K5oFq1P5nzQHCnpiRlr80j3oSy/o047am5KF8WRsGX7dsOSD5yWjruF+6lhA8zEcbVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPDSbAFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPDSbAFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774454693;
	bh=KQvaAmwPyKNoXHw7CmcQ46dR0hbAixTvw4BZjZruwZA=;
	h=To:Subject:From:Date:From;
	b=mPDSbAFJyucMHXRbjsqUJIzfljbVrEaYkCuBPsePPRkjNvN8IlbhL4OiXPcabU+8K
	 2y64rHIXz9olN2OIZOuHtkpwWOjA15XJJs+KJbDCWvUdnEDpuR7kqcYqsJSg7ChC4w
	 2gMh1GoMWmil21MWrnXFEh85VrZRQneDXMtPzWKHygQS0XRfYlxxKKVW7sqTRhlCVC
	 ruJlFDy5y2J/O2Te2gUACsCC3Fev3Ap1rFL5CcUQjfACdx0ITWZB+TRkZbw1Jd46B9
	 Z5kEd8BqYFKBTtgKni6q1tta+cb0eOpfwp9mjiwe2V6TGi2sX6AVWfqvjvktxcjnV+
	 YU5/aq9D2jZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77A9109C02F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445469367.4150.775770500546770878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9fc88a7540441c42f8b17b2e6fd9f4756a6d11018d421a37f1f87d15f70501
Date: Wed, 25 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774454693
