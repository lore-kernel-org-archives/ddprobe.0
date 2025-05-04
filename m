Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370934A24
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746374994; cv=none; b=mhyFSMpugH0OXVVcii8Fx8PGA/Im8JrUnJ3jUSYMxVi0ruIr0j3DjZ/qmBJUITdrhjOdeQpm/L/WpLO7ZhiN3e53U27I4uYStj0JMbYDOH4IWcYzKIGEsD2kNL4PNFf65MUcw6ZHHR2sVOt561jryC2Dq5SG7aaB37F7KOMlxns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746374994; c=relaxed/simple;
	bh=DR47gmnjuqmhLYF+7Xc0iD1rsSu5k5tK1NggjrjwXo0=;
	h=To:Subject:From:Message-Id:Date; b=sr/Ptb/79821nHtZfEq41M1LSlgyY9/4yhiQPBZ93bH0kBzVE44IWJdJIYxJcgCeh/JgzwTaLUQca8k6qpqkRbJjB6xDq+6qooq1Rq5ZJ4A/Uj06TF7zBJ4y6jdgFziXi3VeQUZGdRYgX6pZQm3JDVBzQXDK9gPgk+yVsV6W04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRI59btB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRI59btB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746374993;
	bh=DR47gmnjuqmhLYF+7Xc0iD1rsSu5k5tK1NggjrjwXo0=;
	h=To:Subject:From:Date:From;
	b=pRI59btBGa9avD4fIhSjvFrA5Z1ozXn2q0mopZv2EICyIeEj4x3T3PpFsBZRttEZV
	 8OK12nqaW1iNkXZ+BWyOEH5rRRvlPuyKhyDSqJg//3fV3a4QwX6R8RxSNk0QCnxCPC
	 tLKO9YMEsWT0rqdrJ0k8pWKq9e00LEhNK5v4T9ABoLz/df8FF5lkpLJheNSXyYtamW
	 HAWZz6+Wrei28S6hAHgpYEaaE6jmS0va8Tshh1TT5PrNX5pUgR2QR1ZUML2yJgMEeM
	 dPM9gDN8A1NMf00iT/DqRUKz2g3RWpBpaxRhkWoOBXt9QiYQl4lj+eRFA39UBvQj6Y
	 DxVj3iHC1CK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F33C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637499357.23374.11154028062745920850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d233f95c21328587aab7c7b4feb7698cd4ef22d9142e82ab2ae47ad677962167
Date: Sun, 04 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746374993
