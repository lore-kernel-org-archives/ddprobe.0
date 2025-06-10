Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42480246BAC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749572394; cv=none; b=lbDf2dpN0oWA+Pj8cS7swZiWdwVBwh9Xw9ngH+ujnLBcOvhiUJAsxMWuj5FIH27C3BKbUJMEBUXbFYORbZgC4lQJdhvJMMGSI3TZvnH2ndyPrevhiNn1Hn7zUAEq5uEwsTSIt4w57nCFFj2eg8KUFByDFf1vfEULSJpisXD8d0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749572394; c=relaxed/simple;
	bh=VNdmhsws0k3nuJzE2j/FfGwj/KAU7vb5M/BYCCkJNA8=;
	h=To:Subject:From:Message-Id:Date; b=iSmbWh3nd5tH7aTYAAWTRNZJxx+HiDQ9WbZ8LQyrpNcmnOLewn1y6GaXh1rDcwH0LKaO9nxs5aWILakeoz9bM6r3X9JTEHf9AwdC8Jc8nWMHqPuB3qI0aAk0fCgIgn5j9mA1VreHg1VnHq1TpLTqLqXVZo3icPaTUv1HWNgg7tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPiDDKSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPiDDKSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4021C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749572393;
	bh=VNdmhsws0k3nuJzE2j/FfGwj/KAU7vb5M/BYCCkJNA8=;
	h=To:Subject:From:Date:From;
	b=QPiDDKScU035O04P5jrIVWGOgmz2VkFBlO7Mz31unxvcnJfIKHGxMqZXOY8f9l0G0
	 yzOLZa+emiH32hPugejdNbebh18FEXCYFEphJ8k8WgklZ2HzZ3F78jeTmLv+87x7SU
	 1yTdZyPLPuHGwOVRcM1AFPUhDHjK9B3R3co+nsxiWynGc1PjdsBUpvswduC0GoY1Qm
	 204UtZK0bipKMi//D9HQcSwT5ZwtMDgRS9X/XmCBN5I4uI7w7zmmlalZK1qQIbx7W4
	 zVQBt2a2VYr03laIBkDgRqfn+h24cz4mbxmRd1EPj366XyZrdkNIGOR/bsHGtIMxsg
	 z7xoazZSxDYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B8C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957239358.9867.13197454086988275578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf72a59cb54dc9a0b62e1daecc533556366568acd433337425183da1bfe44d09
Date: Tue, 10 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749572393
