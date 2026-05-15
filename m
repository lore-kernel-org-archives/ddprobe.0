Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233BE3803E0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778827234; cv=none; b=Jxcvk8HVWGiluW9qyeSof88jJqlF1wjIOwGEofsj9pxFS0g+fkmmS8YTYNpniiqLjkuVSJ3icpAQ+BbwI2KvndHaylEFXNxlET/jvZCVlE/U/hZmtEctK049mRgsU9tH6RmbzMchUh207yVbMjyflo+BV2EajAwQoLGm9JeNkFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778827234; c=relaxed/simple;
	bh=7Mta2XtUvEvRRrcmWCombXxnW0RyfDoO4LISZUqTYSY=;
	h=To:Subject:From:Message-Id:Date; b=cx5vXmzmgJhO0C79mn8MAnLLgKbuYvnFswSZB+3fqCwl4MNwr2SGzGXmtR0J0P/QHUJHQt7azp8XEpxh4pb/2RMlg9k4FzHesDoj7iQ3mXOMtjShCBivWcxujyShfKfd2wQrUdkT0iZo8MYv+TnhuQ4kjL7AHO21oADYxmGmtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT7tWmMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT7tWmMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0729C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778827233;
	bh=7Mta2XtUvEvRRrcmWCombXxnW0RyfDoO4LISZUqTYSY=;
	h=To:Subject:From:Date:From;
	b=qT7tWmMvdtjowQ+wxGvkLENfMM4nlm89cNUEydBVqiPRcRnOqMLTqWWz/wTmEXKdw
	 iDHlqMDIN51yrChhuzJ87Tm2hHQJrY3GdVWfkxeuTXnfIK5VhwlLHmd3UKDn5BjM2Y
	 T3eykxRmpkNxAx5vm2SaiuElrqSNs8X8unCuA6JWh+CvveTgK6dFzc4utI2Vd1Ecxq
	 7eOW5ShHyH4s7Juw/Lkus4/FzOAJhuiCZE5dtCqGcUJ0U2g9kereDVVW2jvtG6fOVm
	 kSIKektPSLy1Fbd2JwTjn2XJhRQ7q+Am+3+sWRWFrSI8N7HKLhwbO9+A1uEE8vaW2Q
	 u5p8FXhWpDoPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD63CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882723370.20309.5670764252107554963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe2d5356d84fce6a43f12406efa32daba129e34239c0faed105415720777954
Date: Fri, 15 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778827233
