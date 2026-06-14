Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F688279DC8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781462194; cv=none; b=Xpd5AgInsFrjBhhfXQDKRbDYaN4f99ZXMeCCK8LhPtxEXQMr7MV62BS635ZFRAbIU3TT/Ug5dU7BYlCC4XvRzXRizKbbivnOsjLLlJmxOXt9L+ykyVYpcBLvPbKLePCBpGWI0fPRpm8+CgtSz5UeUnP1W+Wml0ur1vk6wLHews0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781462194; c=relaxed/simple;
	bh=iM0qPlJOYq47dq5XZEQrDrLyN+gS/4e/lmWGdlAkunc=;
	h=To:Subject:From:Message-Id:Date; b=p2Kc3IfIbxVKNnqueBaVJCy33NxrDlQA/J34w9A9NLt0NYoLxzu6zwLkpBgyqxuCMZVO7oWAAC/AKTpBVM9kpx/VJlLC09h8Q2jX0xyq6DyroHOY8Bi7h0Gj+KHxs+zeaS8OXSO+FTmn/S5861uoXYvgIiUWKEJTcgoVQJg7WxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLCWyl/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLCWyl/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0285C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781462193;
	bh=iM0qPlJOYq47dq5XZEQrDrLyN+gS/4e/lmWGdlAkunc=;
	h=To:Subject:From:Date:From;
	b=cLCWyl/IfdhvxL/WCFTdo8ecN3n9a634PPiY/W8H4upNJ0VH+QrjuuGN6nDXlRqrs
	 CJpnBQfqcrfaXhnUm4MWC3ohj2zhUjF9vL4+O76hJVThFmVLGw1ByN6ty6d4EDOwPj
	 W5nmdPkmwYIiLkQ9GDE1Ly4MPQYKEEOoenIDVy37uxUjL26BvIHHIBmTb6KNzqcO6s
	 VUDn0zUC9SaBqnPheFuFIB+nq4zsarSPjoeVeAKot95qiRhKm2TNA//O1lPhQEyeAx
	 NU9uK5NJAC/2hSTupt+Jp4y6SSfICT0cBIJEHHGMhqGLP0HthVWEg7qjHbn1GHoFS0
	 Wnl6ZZbK1FVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3718CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146219370.32390.14700655107867581317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1511c9b2fb760c191cc70cdc330fc6652168fac4e55018c1b6e874df46531042
Date: Sun, 14 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781462193
