Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB8021C9F5
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750535994; cv=none; b=GBwaeoeOiAOLeuBambY7Eq9o5RX7oXkkF5mH9Dpwtb+R8MxiNdfIA4fVlrmmtzB2312m8bD5nFcHAh+hDPqjOxynX3qV51Ag1tRhNRYUa+/8TayVpX0av/uyeXCg4FkdO1B7wxHATVlL50q0pQgrySAYvOT0QZ2AHH/I4HC1174=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750535994; c=relaxed/simple;
	bh=xlkWODKX16yme4paNnY/C900+w/TXAFALO+e5nxvi74=;
	h=To:Subject:From:Message-Id:Date; b=eKUfLTc5/7ZyxoPeEVG7yxNzh7aWaI5j+n7nLmziacYAUJWjNKm0vfKS8E+Co8OTJ/Lo+AVFJN6tSMtfZP2ZOAcT5TNl6ijb6py0RulGCIJwI/4ZV2WEJASQeedlvJPNgki3fxl6Y2WUqoyjJa4KOy5l5KUEtTT9vUj6ATixeI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCKsrLHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCKsrLHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC0C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750535993;
	bh=xlkWODKX16yme4paNnY/C900+w/TXAFALO+e5nxvi74=;
	h=To:Subject:From:Date:From;
	b=RCKsrLHepyL4SJVqWAra3JmRn0FDNq7GhXlWUpNfsiV3j7RNerCRVescy51MluTgO
	 AqrKHaF3lUjYI7EcXWGOE+p2PQpPNR8vDrI5mJ+o9avFBTB/w7jxZgJVzF/49clTBN
	 A8uRQgBvwof1acVxC0B2A5ZMxqppxqd5AUmuQjq8+ekZC9Z6mlvr3BEsvhgzSwm3N3
	 JeU4Gun798udVDyxkJHf9bkOOFOOEdMZ95NsNwVFbMNfrRRN/7gSjDuL+xK/86GopF
	 WzkTbhWPhTgY9Xza2C9etxS0EsOft5TK32NoHnFjTKpgB+cA2kJD7A12Eg8z4GXT4t
	 k2GckiZxdWjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B96C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053599357.8053.327245843734227574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ac8518e2ad4b39c330248a82e59a83e1ae287f1e1b58a4100b79decad6397
Date: Sat, 21 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750535993
