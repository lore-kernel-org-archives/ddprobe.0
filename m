Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6846A18AED
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713817823; cv=none; b=B1Yql2UOlkrIw7NrxmaZzYIHsLzqGT5UmLE8y+H9HKruI6uzkOG0UN79LOby40V9mVHyMvb+FesBrUMIMqanVpMLMlqspUF6hvIveWzrfEWVkZEHMJSRaRwz9QdPY1iWo+JqZxJuNsUQwtJr8ownDvqnrQXA2+3yWZsI3XtgDIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713817823; c=relaxed/simple;
	bh=z8M9NwrFQv2WCZRkHknso5JbyuNKpXCjHS0pBOF9gRo=;
	h=To:Subject:From:Message-Id:Date; b=lvl6UlDxoS+PbU/+ALl8u+Ka/+oKbBYVd4PNkrt1krcZ1cIWqMJKeRe2gj3rpFX1OGSfqaNjA0FxXX83I4HBAIPhtGDEW4/PljwnoX9o8JdMCp7ZkkeGT32D3BGWQvQCuKq8UNXWGAqHR8yOY3T2OSaHhaUpUuYKlgWLAPWp2eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6LLK0x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6LLK0x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F49C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713817822;
	bh=z8M9NwrFQv2WCZRkHknso5JbyuNKpXCjHS0pBOF9gRo=;
	h=To:Subject:From:Date:From;
	b=Q6LLK0x7IDkzh9Ewt57XcYLgbusRsFYRzwDDDWDLPD/6DohuvOIQMKroRZEpGuAZ4
	 KeYkVQkdU5TfYJ5bMaWOkjMuN/XItVjbmxKeyYs8LStF0TWFWTA6xE0sQUuyNHk7Kz
	 bSaSDR9Hm81tBjl3VyD8lNEGFAuhDmC5uOv7BuByPXdJN0v/siDUcf50VG5kRMtAvu
	 nYDp7TPIKGLxeSKevqHTtRry6yEYLbxVRLIxVWD39hKafbWQ40qxCkqBtXxopII2p6
	 CVB2yz36ZG3jnjR9MxaTs3o0OnYkTA8ZmQ2VD7Za5Za4Jo5o9tyR6d9a4GRL+nZ8MM
	 iMNaSglLI+xOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B7EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381782277.4549.15790906759183729053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2ceb448552324d7bd93c95d601eb68e5379571d8042349171d2243fcb29877
Date: Mon, 22 Apr 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713817822
