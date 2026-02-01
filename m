Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA5C13B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769925834; cv=none; b=T/BFtyT11qkCG6U0ddUOuw38wfJwqC9NzPNGLfZVLaU5J8M2AWPBtN6tDOiuKm5jPVDowVl/HAPOhcHaWgbiDoVW/d8Amd7ix3e30QlTBiDkvdmaPiJxJ1J7E6vvrJn0U9bwYWauQY4RyqOOxStElXVqJmUbgZdJU7+79VBFYQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769925834; c=relaxed/simple;
	bh=9CkzVgK8wmJUDHUWTFQ75E2Z3hbpIXM4eZ56KK5KT4c=;
	h=To:Subject:From:Message-Id:Date; b=CQvSHSAhcCA3qj/q7gYgN2Zt2m4NAp6OsXzZvfxF1f+LWIBEFSHAiAK5Az/Jmc/jyPGm5+URopzdVaQLjqzypA9bT+EOJeqOyTqV5PaFHzvZk/Pm9JDAcwNts7wm57kwNv70rvznMvyT0rRSPbofKy/qon7A0mrpqioSHyHvQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRHUaPm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRHUaPm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A801AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769925833;
	bh=9CkzVgK8wmJUDHUWTFQ75E2Z3hbpIXM4eZ56KK5KT4c=;
	h=To:Subject:From:Date:From;
	b=PRHUaPm2sj3lTBtZs86xjnHa3T9YK/VN2QTlNUx2BuWm/qLZxumwsHS7EKWCStc9Z
	 RqSIujH8WnLTCCpevJKf02HC7kJz/eM2UGdBRNTSFZPAiRRdaLQQptKd1tLLyhior4
	 utv7Xjjdrp8qjJfJ6S5LDfiTLGGF8x5RXjR6zcBEvh5YKNJF36LZDrrxbd0azgoWXT
	 YWbU8UNvYvNf3JsNECl5To4CS6W3+0IZfJ6dtlXw/bjt/8mbMsMYkdlq09Fuq8J130
	 enw/Vi2+LwSYMo+RKGXl9C5pPTs27vrrHeI5F9THAhpE+KJB8Dr4thMRweBi0wr33V
	 dNl8EgtfWyMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECCE7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992583357.2083.13482872530460828619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892387a3032011e946ba66038a56f3fea7e17e910ed4889f66b5e96156a46ccc
Date: Sun, 01 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769925833
