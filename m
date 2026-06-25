Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592A0DF59
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410854; cv=none; b=Vl8MMmPXndqV/nrfTPzUVsijI4t95xQ0MqLf6YRUOq1BruOySjCF/ULjy0PEp88hU3tzkt5J+sSt/6ozvW61Ly68fRF3d7hT3iTeTvm2QEUJI49Eil3ITbs4Kku8hqe16/AOQcXSyl2fROd1MsOS5w4JK5cCANFPRitC7gT9AUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410854; c=relaxed/simple;
	bh=x2Vz+G0cy5tHAWXvrBIBP4U0GSM6Kly1R6kMwe+ZxCM=;
	h=To:Subject:From:Message-Id:Date; b=pVchmI3LobejsJqiFCszmJlxq3OTP6jJQTz/nYDBJUOKQ4TYYoCYcTp2Gb+CTuNSOo8zql80RWDAYFjdeiAIzuaHDcDdRsDctx3lz3H4LmiHSApNFHXmUXRCA2exstI1eqbAEH6mcmqP+WGOxGIU74lqsNrgC/IEjDGDJj+Tnz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkopkB+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkopkB+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ADDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782410853;
	bh=x2Vz+G0cy5tHAWXvrBIBP4U0GSM6Kly1R6kMwe+ZxCM=;
	h=To:Subject:From:Date:From;
	b=gkopkB+FxuWFwRYc/ilwqQBs+yRqJC8aHpnieGlLDgKVtk/uBCUiJcGcEPzD8IB4d
	 92H4p0BY9X91+pIfu9kXfZ7PJqcAUtegmyQks0LtlSMgRVb7KOUEitJSgHpECR9IT4
	 yuQPqrIcdMG1HfZ5l/OoOER0bDFEuuS8XKRyBCiiOzWGzxTRMz/xZF59Qb6AfRuWIQ
	 JcWTUvtUC/fHmrn212VEz7/1W6F3WV+W5jj1BFf9EstXkzrDqK7+kCa4+CkK1nkkug
	 E9MWTqM4lcrvNCZwcywAuke29uw/nFMBJpuy/qRvpiIbyLgnhizuVQa+PP7G+NVjOp
	 xrHW7Z5hpJ9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC331CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241085375.32673.3187569746790405274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8239086502a2911015cafdb6b449be653316fb25ed8bb2a5feb6c3c64261a986
Date: Thu, 25 Jun 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782410853
