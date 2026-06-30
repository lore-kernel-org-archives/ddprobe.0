Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C842883E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782829114; cv=none; b=jVfJT+jyPmTryDvC2sKUNgO6Ix30UDqd+qYHxvzISr58Z9KLbCXLBxuMGr+S1NfeuGA18WSSgWZhtHigkHnttMukZFCcocyH7QDWqKuJM1yratCDnQSFuEttF8mgZ8FVQQrWvzofeImWAOwVY5Bzl/5HmDBGZIffae2AhwIiYsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782829114; c=relaxed/simple;
	bh=DQVU1iULNQL+QsKBTzfGx1RcRzrHP2Wb3jVPau3DjCo=;
	h=To:Subject:From:Message-Id:Date; b=c2/OEvq6SI9TZgiKBX4KJRTiQrRlqCoMmVGFm2NUD5pr5aj8GIfjvXwrLeaFb+UVamy1P4QifPkrTrm4kUG5NnnBAQ/7hUqnq6X5LWLwjRWjcY6QEw2eKnI/25SZjKuUKsZzNdLBLH7T7v3H2f+vGIzH5ApNSVSynqIJZb5aT9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx19SWS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx19SWS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C182CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782829113;
	bh=DQVU1iULNQL+QsKBTzfGx1RcRzrHP2Wb3jVPau3DjCo=;
	h=To:Subject:From:Date:From;
	b=Nx19SWS0OuZQ7+9o4sgTRUAktVk4TAWQsAD92dwJyN2RXRa5CF+IkgVpTeJKtkXbT
	 /CTtJQ/MWU++JYF9Y5rqC1aHShXO00dmYl7vw7Xhgy1BO1nDYzz9FXYfZXOYY7dBbT
	 V9auGLT2BioViRAxSi0LRWIc3kBTmKZ+NBgDgzONJCCpuF7mUj3CQcmXLuy6JJsw9B
	 EcqKIKApd4KqYy4x67bLwTOs2Dyv4m6nrs0UHHSYqr8S/H1DSKVa+wwW4bP4H0jDtb
	 im5wLSAshQ02MuI0gOcTUL7lkXjd+HxoyeRTbrXVxvGSz3EZgykIhefEWy/70evG8P
	 9FVOqD3NzdZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE71C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282911369.994.12371446183643613971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d008ba1df498baf40804819adad24325c3f8fe941d5ce0c914a2217e20fe8550
Date: Tue, 30 Jun 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782829113
