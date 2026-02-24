Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E2A27CB35
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771910094; cv=none; b=lEDWlDZc16qgu4DOvQWsVYo+gZh/1PMsrrLVhElCml/NuEx0ZLjp5YQSxaiQ29boFdPCpPZfV5Qd98YctKYisLtIn4WcVYEjgtOVHFgIFIdxWczu2nwV4FUfJySLzHE/LRD8KQwnjhsQqQxK6nS4NrSvsLU5bhNLqi+CJM3DBFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771910094; c=relaxed/simple;
	bh=hyCBwX0Sskm1dWyDVOfWIXW9XxMbVL6MJ68jUBiKqhE=;
	h=To:Subject:From:Message-Id:Date; b=MyzD76vhrtgReFA8/vrrl0/+PQ5WaHCwOnMtLmfochCUOEJ6Dd0tm1hlQtHftIrTd7Q/sZYzyDrQpCZn2bAkxa7KxnYUV5q/hFhi9tHSYfsblrH1Dzy7c/A5wqHHt1+lx/x+XA7E3fNKvkjvnLdLQdH+Z1twwrOVSe2Jb4fNxYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVr7+cjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVr7+cjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771910093;
	bh=hyCBwX0Sskm1dWyDVOfWIXW9XxMbVL6MJ68jUBiKqhE=;
	h=To:Subject:From:Date:From;
	b=nVr7+cjjVqwVwwYLME/5RaCN2dc6kcr6UNUQGB/1gPS2HFwg1fIIbyFQ1Anhr/qtW
	 htNaTxihXNHrI2jpLhrT+MBt/09PHAM5Rzssit3raj7UKxplIZXynSBuVBvBKDihkO
	 gACjddLdMIalOGJJHr90SPb7lui9cWHBBv6CgSET1up2g7I3AKf8Tkv6XNzeyxHBwd
	 IOZJDDcFB7Hc8GqRh3Z66/ZcggG2loPIot5R/Kymrttj3Pbvo7PJSLrbP/zgnITg6z
	 T6bi9Dh8EOoQu1riMB+3OfWbOyc/pYDSt4aMvFpmYxOsC3sbpMaSTadBsHhNuIlTqK
	 eQpTTEoC9YwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285EEFB7FA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191009359.10451.16332922031108937003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a2924002011e20ceabb220e93a793f730f552e2b6e73f200666696387d42dd
Date: Tue, 24 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771910093
