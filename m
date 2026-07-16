Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3973921DB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784234314; cv=none; b=OowPLwloxiou/0On2u8DrXLe0o1K7N0jZe754jhnMWeGfGm1djo1qKMwOAF3KemdTEDr5hjJvsep+ls8kSvxWsVtLjYqKvwMJ9eJu71E6XdHC8zK/SIajSAq5JNi7POqDt3ekou/34HfFakbh/Wh9hMdnQu4r0KjiNYvIgG6rYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784234314; c=relaxed/simple;
	bh=EFf7bTs9bvRYZBiAVSMPow5iFToV4CTHWcACKLjuWyE=;
	h=To:Subject:From:Message-Id:Date; b=Jiq9K5tHAteF2mLV/43Voou+4OGxd9V0GZJFwYkSJvKLOJvOFs5XxbTXXqUftpvPZOLmkwtayG1im6+xZwDol2AmXPMhzn0jNKABXttpl3SBVyMcYkg/GCCtu2Ii467mfJWqeEPdpi032dDNJ4yGxE/wBGx8K28BimM5Yq7gjtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHPQ5lYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHPQ5lYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDEAC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784234313;
	bh=EFf7bTs9bvRYZBiAVSMPow5iFToV4CTHWcACKLjuWyE=;
	h=To:Subject:From:Date:From;
	b=LHPQ5lYFgU1uK35A0QFlmI//nX8YHiVjJHfDwgp7rNQDZCN5J+6dCN4BbNKgfhyxR
	 gqddG5efMccAcG9pQES7g+FOMiQxtL/W16DKMSCQdNT2zVbxZSbmjwNAZKJyU+7EGn
	 PBO0e4F+XuH1avDWGdkT87Byv46Uq5fkzjoRnKibsD9Yhgwrh1ru3y8k9YpoKUqQke
	 SCqfWyUSvFm32WFolm2w0Tseqm9dhnl9YdFWF8ZkLf8cAGoreub9QaoaMhnOCBf5t6
	 +h+8Jyn8DhAt39U32FhLbRuepsxEYwAkmBrL9aVWetaXg+htlumnLtcOtZ1DoEBXe8
	 POQlvM2Lv2pyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A4C44514
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423431368.30777.5004825227053317332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824a4fab33bfe927ef774b4e67349fd4368c23eff97b8ba3301e3a1aa01a18d6
Date: Thu, 16 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784234313
