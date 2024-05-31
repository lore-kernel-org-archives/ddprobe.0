Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C70C380
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717194263; cv=none; b=mqUpED5aJ2fakIkLfDEh7F1G13pizpPBQ+LitC3XcO+xtVORYrwkXzOiRt8gAUuZrSt59Elq+ifnS4uT88ROCprt8XOoo5T2kRpz7ZEMYkMYi5KjHEr+ZMiHnNZwx/i4OnWLkXHpO3Jc3t/ESP4w9qrNwo1UNPlsf2KZ3RDNdgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717194263; c=relaxed/simple;
	bh=qz+vePcgVnaGnY+opMfLj/q7QwOqakFLAsgWai8dAu4=;
	h=To:Subject:From:Message-Id:Date; b=XnWei/4qqWTdtPmpqn8UzUCSukA4FDOujldQ+k5FjlbYxpoROdsTjjw2VHr+f8mJM81b9a4LAtiEFfEbo3LqLuMnyW87NzHcxfFMZDPFycbx2W0igaugw8uZmhaoEhDXGq70Ezipgrge60v3Sx5JIZuKVADRK1yAymD+Ch0Pui0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOWJFCvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOWJFCvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3FFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717194262;
	bh=qz+vePcgVnaGnY+opMfLj/q7QwOqakFLAsgWai8dAu4=;
	h=To:Subject:From:Date:From;
	b=qOWJFCvFOnp2OHVZnRDtxo8WT/tfTN8P/YoMKKuFEAPseKJSNKyKEIJzbYvxOzSSH
	 V4UgYkrm7hUJTD/Fv7dyGutlbUHhZb3jVrG9jZ3+gi4rEeI8V51yrG4U1IAgJ8TjG0
	 IGIjGJ3wVX2wfuKWFD3bynEjgqyPEJg08wNYnIeybk8yi8BCjyhn+1K8XAUoZcyj5U
	 NzTgZ5t/d2r18YbqN3Hnz+jh3xvH+r7FRccAmzqkIyfm+hYQh66PwDSXt9eSLX2X8t
	 iWfraL1yneHzQLf05IbMywN++N2w5OU005PoKZTNtDHxkJ6DBCPf8TxHJpXVagMdS7
	 UfQYoL4L8ZHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5349C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719426279.18406.15811848936032189197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4635fadf16d74d4ed5df33086c0ac40fe6263c46fb9bca261d2a010134a15472
Date: Fri, 31 May 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717194262
