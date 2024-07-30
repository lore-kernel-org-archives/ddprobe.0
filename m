Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0B61AA3F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722366954; cv=none; b=B+zOtCpa1XFTnnKRg4EkY3FKkcX+q+8WPEw8onsMh9z3Wg949Nd3Fs3ANpeT1WM8vEuo6iQFK9m3nk1jze3yErnZHTlyP2xo2IPZRZTdNyugjwIOr5PkRY6DOz1/564n8qhEPH6fS/b3gGitZWtX1TseB8fVwpbN6QcdlRGuzHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722366954; c=relaxed/simple;
	bh=SYTRO3BiCacn0u/jyUVfghXivZ+SSY37HY5hiO/SO+8=;
	h=To:Subject:From:Message-Id:Date; b=jWdc0t7PsdCObcnOzMS8dHb1xkd/VqI8pv7BV6X5yfGt1hQJ/HmAHGEs6zfrH3VF+xT2atKZ9K6ZTfimvR6Z51F+ZQvnfm1i0R/fXspOlKbnDfrBCcLqN+HilRNXtz+eavsHqHU98L2teEDlcTco5hSL5sP52p2S8+N9m/xirkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeXZ2AUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeXZ2AUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720CC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722366953;
	bh=SYTRO3BiCacn0u/jyUVfghXivZ+SSY37HY5hiO/SO+8=;
	h=To:Subject:From:Date:From;
	b=WeXZ2AURRIRAiekk+2WY0f+tM54agpuGWs53ONswJzxi6EJ/vj+MUawAzC0l7rKEQ
	 T6tXpH3FDZ7pHUT4MQP7CKS0OvVkrlbhrTk3CsUBV4WJSz/1ZjTph5u1UeKA4WlS7X
	 PbwRoLxR9T09uExZcjejXlXWemupwbP0TUywjWbarAWxEMu2cZ31pi+OoD7qJnTnDH
	 Ho6aEIqh3EWnkXXjIf6e/yt1LKV645rHQNNjfWJoaZSKG5tA0qKXen3BaSTB4d7PrZ
	 ZLxhst4DSKrzStcRgEJVOP4+MYHgvNyn+kgxRBvVKSTe8xASjACINeGBtcm8XwF9rc
	 vpjP+IJG8KBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC5C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236695360.14136.11864066094305745440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4a2e47baa662814f8f5db008741862842a39b0d0da8a214f0a0b32ccdfd7e9
Date: Tue, 30 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722366953
