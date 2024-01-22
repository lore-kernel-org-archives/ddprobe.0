Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272053B780
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705918697; cv=none; b=rHFoJZOJxOLUKM8DzMsSpHSCCYKQYm2nUlRs3gfjdwSigM5E43rn7BQ5qm5Ghz+mQebBH9iSbrN1CIhhwcylxQ7taib7YJTkKJd0+khx05cZJL/siJ5VQ0QtpdOzJQE5DQxNHHeskRmnDJ5MvuyDCnqf0xplerDJX4XvMxcR72c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705918697; c=relaxed/simple;
	bh=pW0IwtHjmbgJQbgdp/MwvTW1j7kek0Ui/JpIUHS4KWo=;
	h=To:Subject:From:Message-Id:Date; b=gEjg4SNcaZWz2pFEgWMIx9HkzUrEtGu42TXoiUeB/zixrnd+iCsbq0jShcMbHI4ahAX5gIap0zsbyoaqJyHAdroEpttCTgaaZfVziw+3HVvv5vIpF7vP/R12BeClAKABKhF2MBKb4WlrM/wZD1AwV3G3TGGCmH6izfTjN+l0YxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltyYGzMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltyYGzMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEADC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705918696;
	bh=pW0IwtHjmbgJQbgdp/MwvTW1j7kek0Ui/JpIUHS4KWo=;
	h=To:Subject:From:Date:From;
	b=ltyYGzMuQc5RTegqmWR213uO7QBYL/8xUTMOKUL1Iv1KH0h3x2OqiJ5FkyWMHN1Sw
	 Du4D3SIg8fjv2pMkzuO0U0IINvIToTqjXrrlNhh+tUF2ObbYH/+2OFQ9C+Hv8aqUR3
	 zz7tFRNBqlUqsqisrZdkZQ2iWgidcPMEyB6r18vVmtOHNROO+rP3LMd+3sTXeKEJj9
	 nXYFkx0G+dJAKdyCJlkX6ivavP3aTScDHqq9g5Z1WWosHECDX9xjBge1hUCoLzOQlk
	 NMkLW/v6SLBMZWHwPdlfDwrIRXVNc6qQ+ZNG+k917p3UFNczaT6xuRYWcXd6mBIiRW
	 OfXmolqVV3OVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A29C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170591869638.25666.6892674148508244670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960dcc428363b54ab57b6f1870cf810516e3904a935612cb611eb24e1e905e5a
Date: Mon, 22 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705918696
