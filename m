Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7961DE4E7
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743269394; cv=none; b=X0fyq+eg1SCwYytOD3NxkKox5XaPcEtVfmybJ0b/n/Oa3kVqDhZweHJf6YVVz8NE8aD2LWMLnbCBIvCOERc5iCLEQue3rm2EisbzW0Sihm1kTxd6sHAFClOMfUs/Q1fy+SpC24WCLhODuvkjeWNVbucWKf2fdRfwuJ8s3XMMaVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743269394; c=relaxed/simple;
	bh=dXE3yEoR6374KEXPNEE5dX+4OTMtqbar5AaALNEoiAE=;
	h=To:Subject:From:Message-Id:Date; b=JWE4rPrR4P81i9ycmmqGNCmhDyKPQAF72S9my4HBMocO21sYIQlimuOgAcWRT3VhJmkRQG+1XOVl6jVtLGAyttAop0xqmEZ1AQ9Skeoz1eFYoKscIbi5+6MMOAAP4VMJwWQu9QCkI1cPfxUJ3HNtz658/qIaQhsJs0ym+FwTAQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nxob/Sh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nxob/Sh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC727C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743269393;
	bh=dXE3yEoR6374KEXPNEE5dX+4OTMtqbar5AaALNEoiAE=;
	h=To:Subject:From:Date:From;
	b=Nxob/Sh39SJz5S/ihCMl3qNfoAW1YK2wkTk8bwQdq4TZ8DnTMfmAwewOwHQnZxIiF
	 gx7kYfzkmPPKrm+HsAlEeqFnT3ssY0nt8IYOEjVbhr0E0NIzsWHEliaimiuLXNAFwn
	 +Wrydn1rY3K2fuJQFEuuyRUI83/qO3N8N7tu/uxkivTXXbjoWVjEJggX9SFMvz8b0U
	 imYCoeQGFAOYj5vQqnPnQYxz+sW7Bv5ZuLmwWebJSgInv56cE8QmGCulpFpgESKZvV
	 6FyBVV0hHXwCmVB4zB5ibP4Mdb4fSmPEg+7h0aJRYHBey6fFSRWobguuuujZiC7pKr
	 5uKCxnRzdTejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9473C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326939365.12384.7407018371192680830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fafafe16ef3aeb510c4c4511e8abbb062377326d4c8b107a808e9ff49df841f
Date: Sat, 29 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743269393
