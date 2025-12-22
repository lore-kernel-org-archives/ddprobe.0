Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A72F84F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766427234; cv=none; b=Hqn31/0pgGecGjsfVa6LrwHW0SLb18MtOlqt04Xr5LltheqJWZ7iRE09hB59OqiE4Cj9f3Vs2v+DcdsGg/m5YVaUUwux+3Xu5+N64Ps6YiV4+TxFAWStz+r3pG76BWlHI9/zJIl59sOrKklXRgFF0GyMwgKERRKzWVf8ZDLj1Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766427234; c=relaxed/simple;
	bh=NVbPC4QMhgfhbESgqbYY3dxMAUEQNCmfNWmeJH9ILL0=;
	h=To:Subject:From:Message-Id:Date; b=DE57fDpCtAe++QmfICmoSOv4MMZpslbTukyEDtSmiEmTijUMxUD/+GH5+j5XWUKDgBHFZPVav3+svHnrwtDT++xgkL3uNHyYpWX18/Mwqp4UgcYlI8YLR1/VfjhCjXl6egExgVpKY8dqlU9If3JzINZR8gkT2e88Mq+O3fKw914=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZDLwec/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZDLwec/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D33C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766427233;
	bh=NVbPC4QMhgfhbESgqbYY3dxMAUEQNCmfNWmeJH9ILL0=;
	h=To:Subject:From:Date:From;
	b=iZDLwec/VW94kkJv2gzE6qFnIgIKimrxDjtUfpUfChqDRr3o7J4/N9+Y/ybTUrNyp
	 nQwzMQ2OPjqEWNeD7PjrnBRt1PaqjM0H/WlyVD4/34mZux8Nfvqi+QXcXxjNI4tpex
	 5TXATIZrhcbyqKSbEbE8lHgqo47a2JfNsI7eSgpMOTcHRE7whvXZ7Y5qzzX/liLpQp
	 nL6HlbvVze0PmDJiPD/BzlKWLZwHfbzkCRr4XdpneKtRNv5JyGCsfn4cXVG1dNGizs
	 HR4rIEHCibqSUBEaK+UTPgFmZCPntPmtDwXSmEKtTGnsebjaL1+jrys9uPpxTUiwYc
	 g/1wqJGFkgPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD12E67497
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642723358.29542.9448018835214095325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dac7cb26befadb1b8851b4d71bbbb359883852196b48d2280118d46de7d2c0
Date: Mon, 22 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766427233
