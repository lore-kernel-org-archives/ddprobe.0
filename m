Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF5425B098
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786590634; cv=none; b=LrlUqIXUnCFIX8CE85DJEp0Ex9HK79JBZYHrc6oTT4IUx6P3/ESTbPctXmGKcQMSwM6xe5/+2lEpgY6d5sDR8X46NaF3dfWjDLrfLVRdEZUKPJr7agybS9EmNQfpBEYsdhCW11qOHwByKY1fUDYZXnn5jzHTl/PH9fvPJG8edUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786590634; c=relaxed/simple;
	bh=jruIChzpUWLfp4i+m7e83GEEVMVYuVjKlmsr0JiHe5E=;
	h=To:Subject:From:Message-Id:Date; b=AhCzT1f55OyI3Wr+g0YSJSR+2nE3tQ3RoeT1wWw93hNW93P/j5UXZkQDE7VzRY7Jw2tpBJ6HO9FhqlGUykz/GpRJhEIJj/0nJv1apa2DNgl1Ss3kKRNf+N0Y8sg9XWUJFOJxJBDqHNuI4zbUY7kBhTAdsBwgRAMTCLEgrueIXfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM1ANUXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM1ANUXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51AAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786590633;
	bh=jruIChzpUWLfp4i+m7e83GEEVMVYuVjKlmsr0JiHe5E=;
	h=To:Subject:From:Date:From;
	b=DM1ANUXWgqg5jhcI0k1DGgc2QqYnse6J/umZoi/eC5/acJBgdifcRHOJES5mFwdt2
	 OPOsB2gxQU9V5irprLFMdiPhMvnYkxGd1C6j7rdBHAZhyA1eb5p+yHU++b93iQr3mu
	 Yu8g9Qgj4GmxiXvVSnm7En9zIevdGdEvim9Gaqc3+pAvYtluOp3d18cOj9RXKl4GbR
	 7tRmqvWWVSFBeXoX7JIw5GeZtP2HPHGa7RWsX4kAagyEPcI0ahDBDMpPprwp8OfzVi
	 URzynhxJfdMYDrhR+8r1xCL7ngBv5rJSjimBvkBgu7ijlgUN5G4xpVA6YQ7d/oRFCL
	 ije7mi8V5Fesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43AC5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659063368.30665.17663654425645778427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed0d460257c8b14284409a032c31aeb85b270282d3c89c4585d70e21514a4e7
Date: Thu, 13 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786590633
