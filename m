Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAC3283FE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004693; cv=none; b=X1dq6OV0syo4LRTh0t7lG6MzXzNnXOYv/cn5d3ybRFqm238ckWfzYF6qUsm4OHS6lcXYE5sbtrasNVRyKarVHe3InYbUHfVLHEcbzX7gItu7BPiZ9wtRCj56xELOpC0a7G5da9y8Otu8xeqEty1Aoa1uFnQvWi3YtxbaKXgEmKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004693; c=relaxed/simple;
	bh=YnSzz9Q9Pkj/yitCQKv9SzrifUPNroAF/LeApHnQHlk=;
	h=To:Subject:From:Message-Id:Date; b=fF+UKpL7ifZ+CZCAm/DV9bwnvJxnE02YpNoCeEWcX0yy6LOqJYR2kjHjIIJQVpynkMHh+ecbEN/zQQw6pqjIc2yA6Jq7YTs3deADO8YF9nYETo1QQeET6NTj67R6kvR9I1HVGZMzyHrx68lAFlrLmNFQq3F94hbgZnmU9hMk9U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmbkjQTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmbkjQTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97211C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774004693;
	bh=YnSzz9Q9Pkj/yitCQKv9SzrifUPNroAF/LeApHnQHlk=;
	h=To:Subject:From:Date:From;
	b=DmbkjQTTQYweV/eejUG7rEd8rNVN5TGrO/5tM5fmUfdtvqMVSFkRTGfup2HQc8Xvn
	 xzu+jGx7xlHuwuIiQQzkYHvQcaTNTMVbDxsfOdJBp6Ql8/n2fyQwlUHChb0eoiskPc
	 G60f5ynEFSZOWD4PMqttxVv2gyhHxWKO1Tm2fOqn0dtqq+hhzDi05bBjeEi0bUjLo6
	 XkVZU6+C3Nhtk6Hdl6rMImGHUd5QY5g4N4cImMgTZfKgSHS9w19R5g1zdT34L9/ghs
	 BR2NjQUZv+kpdIeXPjOVZGeUWTS+VbcvDg9mzfdOQQUc+XGPyMiANoa/uLCJkvQ0kf
	 Ag2HwlenZ8m6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CE108B8F5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400469357.13246.9384358668797804017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e160c28f0af1dd323cb94380272e8e76c3916ca182450070a92dfe27f4389de
Date: Fri, 20 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774004693
