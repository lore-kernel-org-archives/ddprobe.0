Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3F39EF03
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772618094; cv=none; b=aP6fBzaS2n2Irx+WR+mz9zPo9P9TazBtOF2ef8yh44OwhGn32J04MOfmlb6JoA5LW+9WH1dzQhRs6lS0Y94r7zB45jXV3CI7LZAQiBcUDvfU5lUAmS9f33W0BAcfhdAV5Ui+tJoPLjcJGWFceEPeEFAu3el7cjnxDe5p9Ecd984=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772618094; c=relaxed/simple;
	bh=/4kBxEo873dk1LOc5CyfT8mPBFipjGcSbSufk2w/M3g=;
	h=To:Subject:From:Message-Id:Date; b=nEitdrLDM2opKdmzHdZmDN3SAtKuLZD+MsxgIRTfrj8+yLqB0e4CaqPpT6xlnAo5mlVJYtN+mCMlwJZvdHYIrptdwjHoozPxU6hk2ARjITwcOBoTiapug3vJW0aYSPrDTf/DUiXprwfCnQoD+pMBERNRYwlbNXsONFc1F+jcX1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CicDPRCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CicDPRCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB54C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772618093;
	bh=/4kBxEo873dk1LOc5CyfT8mPBFipjGcSbSufk2w/M3g=;
	h=To:Subject:From:Date:From;
	b=CicDPRCbBaWQ4Om33ztXr+tlZgN2jVChCOKpeoXJ4h3ftwgwvuSiFzqcvXCScmLxW
	 pGtqmH6eI21qSztDdOkDC7L947e/92lOOdiiaUEfZhFY0UFWIa3PTQSaoPjk6nKZpg
	 tDDHthaTAVuuyOUCRRh3LHCqFJtVfbJtLDa8yHbWnccKC8hEjCIFv5fGqyWcCI0X3q
	 cuMf/Y1MfDq0QWw5zDZ50KnmgUb243yGpDjvjU5K87YATBc0lZ4wY+Hl8SLywAmcdR
	 Fx1vTBGI6bTwVXQjB6ASuaZpkMPn2B77nN/NeWD/63mgTkNPfROB71aWxJU5ubyOL2
	 7/WbmJt5Jzcxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99153EB7EAC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261809361.22738.14982197310721976912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e1443c4ee8789114160a15b235b6451480fc48552f580cb83decd9f2018501
Date: Wed, 04 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772618093
