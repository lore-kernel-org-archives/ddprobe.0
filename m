Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E20331A41
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775297734; cv=none; b=uoCgc0b+UKy7MGXqlXbmI/Hr40QN1upx0ckXrR4ceGU7HUoQq9diu5ZqnzcvGk+K7z4C09sNUqfBnOg7q0pehurbBm4sKCo4x/l+/ptBeKHSVSom83+jw2+1m6wxIZn3fVV01HUv5vGSXJY23w7QG0C+d7vfcPzeTc+GyXnXQF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775297734; c=relaxed/simple;
	bh=UU5xRLinuASId1q84P4RgfeSeeomVBDfpGQakoJwr6s=;
	h=To:Subject:From:Message-Id:Date; b=Ns37aJbmjD/6OWyfizuTPMOz4Jr5gdsyH9OxPVMjXZ1u+tMNoz6jq+D/hK4DfnAmCNZVNuaOpRvry1fxi/dGGXKyLWe5ZBPjDjCAa00LDThEefy50d+mYQrnYaQaBwUBtcrLr/cXFhStSNjNtBzAN/vpQvEtR5wZb8Pw9075Fyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+/KhZGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+/KhZGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE81FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775297733;
	bh=UU5xRLinuASId1q84P4RgfeSeeomVBDfpGQakoJwr6s=;
	h=To:Subject:From:Date:From;
	b=f+/KhZGNFuGn3gEbUPbbu0oTt2btN+Ig3YW73SJPHBzZq1MLdTBs1inD0yb0KbufH
	 /s7NeEEnYU6JbFjSQ5Z7B+qTLYYTvtWxh5v89NBVsFbrE+JvyXKqJcKL4E0hDt4k+a
	 kLzjNLgiQGqhp2d66DjdCh7fbdAEDLekgizFLbUL26v+Mr7AyWoAxGOkowWoKi+wnr
	 ZDr1NOAhSxOyhFb+aqf7ezsCq9xRVIjN/u2UX8fPI+o2ucg5CcxuH4fXe+Qpj5d936
	 1KcHnFAb002xy1lUJ8kJhUc+zX1RWIJdFun1bZxIE82J8KHIxBOhLWsz4e8ukMRabS
	 apmPrR9L/vgDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0AE88D97
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529773369.12816.909977802103219103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6058dcb68abf3c29417fc1ed92cf444f3c8abdb553ee94d7bea74283baa63d
Date: Sat, 04 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775297733
