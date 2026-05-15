Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288363E5A34
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778877034; cv=none; b=aJo08ngrxY+SLxvCJCOx63nPnsG1BuY0vPlSbjrF5nbjiPR/pC4O2PukNtPeSRgbktF3hGx3OQfOSLWre2dKHny0pVFQBvSQn5K1WCh5UhJby/hJ4Oe1I7+xiLr3u3PmY487Vuv5gqUqlfliU13K5LIeY28ZUq/hPYsin1uLmKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778877034; c=relaxed/simple;
	bh=Tpb2wyItKc4QZYoETuwD/Uu9zjvAGm4jFSLSjYNcR84=;
	h=To:Subject:From:Message-Id:Date; b=WK4FqxSD+1lS7N6JijZnoN2ekdH+SZCpYsCOM0UqCUVEEK72CHZnuP9kDPxLbJRY3g9MLQEBO2qGUcKTcFBeyOWljz5FAPM9aPOxSxz2JT7VYv0jGMIGa5NR7pN2ul7odjmbVZe4tWQnF2oSkfdxuoss6dv6pWF5HwxoANGCE+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI+nO+ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI+nO+ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CDDC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778877033;
	bh=Tpb2wyItKc4QZYoETuwD/Uu9zjvAGm4jFSLSjYNcR84=;
	h=To:Subject:From:Date:From;
	b=AI+nO+uxXDfIXJILG+mfQE1vGFwcmPgYy7XqZZ4YVg+MI+3yTo3oY5FOZUCyh3KSl
	 jKMZw9vHO9borty9+00bf/nXtZr27R6bcWZqr94vVrZtvW/hHUR0hWE72fqRzR5eWw
	 Lu8bQmiU+PUpIvbu8HJRQZFTwKfEcxZsV5NpD8UYWqeBHfz2KzsyRH2OiAxfLCPkMu
	 cQE3bMWmUlYQKLr4ze8shTF2nO7aAQa1b44Bt8SzQZKcx0nnHhkQ5rzK3mnaCBcIFo
	 JQteHigxjxVoIG1lscHB++vt2uxJrq92Tdb1TE7hKxvBYbAdQWvnI2Xr44BuvDbif3
	 hr78oVVMdLTYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC054CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887703369.13621.10740805370587224477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eb259dc9febab444aab44620b98c25218be51eb11588c6a108a883f91f3cf1
Date: Fri, 15 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778877033
