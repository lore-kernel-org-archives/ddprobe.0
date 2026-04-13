Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B2E38947C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776087454; cv=none; b=XBlosI4U/pFIcWT25n3jfgj5dPCFL1dXGp1VDUApFK6T9uX+cFRBI9EGU+vtYWG4Wo1qRGJQDy2zx4jVEInkeIq3h+pO30W+gLOlR7s6zGePwbSjN8kD4nxnpGechgQII7QzJ/tfkJE2He/tRM8y8GlNoqtLYeZ/n43XJexMR5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776087454; c=relaxed/simple;
	bh=9GcbkC2ErZV6iosTz/bkQzDVZGjpz2BABK8MWG0kpUY=;
	h=To:Subject:From:Message-Id:Date; b=cpk7HyOuwvNnaktb7MRXdoh1eRtPJc1ptG1t9KubiLrEiR/wQVCxEqm5XFm7us5OYumFEY5L0CXauY2x7acQED1XKcQOvzK8SlDM2JCMZBHC39lV2YX48/dn76nL85L2YsLVg8nBxF0cz45DkknW8gNU2u5BUinqNsJHQ+kjmvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvMcxtlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvMcxtlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91C5C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776087453;
	bh=9GcbkC2ErZV6iosTz/bkQzDVZGjpz2BABK8MWG0kpUY=;
	h=To:Subject:From:Date:From;
	b=qvMcxtlvXEOMS2/zOrGPCYicVdCLID7R8EH0C3KCzTUWgJa2d20W8H8yIUOHv+uPH
	 7pBtcOGzILHAT0GbsFz2l/KgnLKVW5W2sXvnZCbUdBt4NvcmnfMLqlUIeyCZDCf7ze
	 bh+j6AoeJqVlO8xLC92HO1LdDzOe7eYC9pxN3VHv0yjM0opbCvr6mzmLPj/JM5Ot8k
	 2NFR88WsP2WwAIWRWW4n2eb5KPTJAGSsjfjLr0+BHliOrzlY/n9kQAd9gGbCPsArsE
	 UXdKWbCnQm2YSl7MKuivGa6vVFEpcvucC81DNmFbV9b1F5OIeEoHCdcg541/S3rzZk
	 +1uXtEndoq8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B69F34C4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608745368.23134.37421261443096644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2074b820509506fc920fd8d8caa66c9894db9a7647147d56ddae45d144998c78
Date: Mon, 13 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776087453
