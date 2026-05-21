Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC14299A82
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779348034; cv=none; b=VCh5+TEFEBsccpRMxgHKtkzYd5ipNNx/W3Vb0uFk9AZsu0zb4McpkbaTyMPaVNdv8tCoJF4XntBcd+O43RaxAt8329XMq6k+ovDoNKiP5skJsuiVboCtlA8VWf78FOF2WbAr3p+qnWRGLzCBHbQVoewBNRYjZ3fye8kQ36be5mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779348034; c=relaxed/simple;
	bh=SsqDuwa1JlcefwXaXoCRLU0aNFfKDXkex93IsmVqV4w=;
	h=To:Subject:From:Message-Id:Date; b=OuRt9J9RjQOGpciqB+M70dmm/Vc+a6sPpyADwcSm5FtLn1R8HsxxH5TlNNcYC59ZJg5n/UVsMpbrjFXVlf6w6WeHozwWe2AMPvw7NOk4RJTl5+qN4bC0EV7ytRUjiz237SBuqVlqS2v6Bt0WJqncpWW8a/T7g3Oshyf1ffocCWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK+G8bj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK+G8bj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5085C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779348033;
	bh=SsqDuwa1JlcefwXaXoCRLU0aNFfKDXkex93IsmVqV4w=;
	h=To:Subject:From:Date:From;
	b=nK+G8bj3nhgycDc4yBWKPt3XnioyN8exdNAUvTGGi1Y5KthM+mayKLkEhXLvifUiK
	 lHHf63/rGT7FnyWthLf+sjBtyUaVdCYqoqWNFSAx5U2ZrmELmtHZrFmGAJEJ92/9f8
	 kEZkKWgg/Jih14Qwznx8Jq8njnrYZ3mpJjRyJnMHfynyxTTf/qBzv2wR24J0BIqRLH
	 ZWMwaB0HvHfs7lNJlku2bKb6MIxtF2N+FAh3rnWTGMs9NTQOidfk71uP5THpm4vtb1
	 UlLIYC1QVvwtdIHfxoqKch2HKDrPidK6ONS80fFJ2FbNhFWDUHtnNWVtSXx7qcXw5D
	 f/Gi5NWGlLBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC28CCD4F3C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934803369.18324.18087299421557941329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abdea41288e74a89658744322d6a978c8918d7a7aa87169eca1a56959633535
Date: Thu, 21 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779348033
