Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A852E2F12C0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763544115; cv=none; b=lesi0NyRqSSeowq9ROxehjtWWVQvRwWHP4fj3JWlkhZRv2JZ+G8h3t4XszADXgXwgI+heabN3DN+Zap6kNcOwqa54YF1PWuzESQdu3j7EObBuUYoPDDqP3E4qMtsq6hwCVN981dLJHyqsK6KibkgJFN4Uyt/McAN1YA3woUDOws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763544115; c=relaxed/simple;
	bh=x7RZL8/Yaq/RI7ttCsHliZnlaaWuRZg2UzFQODNo2ow=;
	h=To:Subject:From:Message-Id:Date; b=tHMQx+VdpZqRsiP6cyP1ZJp+Nl18n5NpQ89TPa7NmgDXJWZ3I//K0saJXXM/ftA8gimO+Q4TnytbwEqOnoTKAo6h/QVx90JLMTdL0AbtrxmNx552fPn4XnJKptIsZU+f7/Iriwh50ADDxFJWdGm4dynNOJLf4YDfsgCAtIrTJHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/dQXBQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/dQXBQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08F82C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763544114;
	bh=x7RZL8/Yaq/RI7ttCsHliZnlaaWuRZg2UzFQODNo2ow=;
	h=To:Subject:From:Date:From;
	b=L/dQXBQ9uz3OG2Qe1/BQ0rtJ0W9opeDx/BwWIRWMo8VIJW5TVI8Sd7X9fKy3PnB+2
	 zvvPWLudkGVQG7sgdYxQEvQ4rLurkDuHT/VZntvIGnj2OeUz4ZmA9PYdu7McRfIg0d
	 4ePKRBLLGt5JQq3JfMNTmWNfXnIuBX8mOpdYqbMxRnhX6wJqUI3fmLferJVVQgql5a
	 PyUhCJesj1SK8UCf9/QMd9fOAMN4Mmw8rVWQ0rNXfdTZUFSjQpw0VYByR0JYZr9C0v
	 NvigD6GQ4ELslGAeG5DWwl7s+Y8GhO9jlBjtogEMW845DiG+P1aFKZDPB2JGiuNPnJ
	 qii7qrAyQP8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0CCF256B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354411360.9207.7190944401379480926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2d13f6594de24ba715edce2db041ba70a129574195b7b060bad8b5cf38efd6
Date: Wed, 19 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763544113
