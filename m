Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2D210F1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738944954; cv=none; b=hm5onHc9bmKSBGi2i0h1zVUC06uBXGQv1zwBq5FuSZVPzBh3M3zdUPdyD7UKu6q5E3q3C1W85NWSK/ZZCJvLAa6vUViZ3G3Yp3hmpcaCzQXAZ31d+9kuJ1Jg8sDHRtkp7EI974MkIbGvUc5Ecy9am5zxQsQBNFSUYnCcI3muO8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738944954; c=relaxed/simple;
	bh=GHe4XnzC0gJwFYcbvZCnbId+f21uwadgMEXKGG9Gwds=;
	h=To:Subject:From:Message-Id:Date; b=rHtEkBkWcTEhkcqoawUJBIfeDyBKCQ1+Igh/UetoSQkysJWZ4BE8srfrfzevMkI36jczBfJxAgWsnOuwlW1S8+cd0jltmbMLOLhdBYoNSlx/hFYMyBcOQB+PgYZI4jOMMIKRueE5IUXeNZ5ZDcl85lt2VvDVfUfM9FYxM4Y3eX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfsD38SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfsD38SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B541DC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738944953;
	bh=GHe4XnzC0gJwFYcbvZCnbId+f21uwadgMEXKGG9Gwds=;
	h=To:Subject:From:Date:From;
	b=BfsD38SZJ5nkjrQmGzwLoL/qAI3CTdTCjWhc3rzB3Vxm8Qn3GX3/KzLIzkcdQIiD4
	 qRi97UOXOEvQhII8c01p877/kXPogUZGHWBt+VtuOiM+YFVLfI8lMFX/Lt/PfjDk5D
	 l2UROZfGs1eiLErD99PIofh+LcuA94lCowsTtI4w2gWGGE05TOBfJxHWyTa3wPGvbj
	 jRtDWRpsp5p2BkpL1jj6OjxTLxYo3o5rosepsjCAjVOM8tEWNzenEl3Qq+Cpm9IlhE
	 bSRK3PUVDm4GVBiVxtgCEil7s0GCVwdEUOvGTzuO5ExDRPEbL+SgwCaetSCfu7T1SM
	 ZVIEzZRmQNmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFA7C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894495363.2099.7305205771776476059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2942b8c78085e9bc73dd604925555db8509f57f8f619a14d148545f48ad467db
Date: Fri, 07 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738944953
