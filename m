Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C3282EA
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714122743; cv=none; b=C2Kbsi0ooF+RrUboTccbEOHB0EmKpBK/P2QOiqf2EsTzc+Wfl9VTwtPR5ellXPp36ak0DFJKG2FROzSrpyuG/gt2u4vfzMGhp+NZl402CEbXgAKvf1Nz5GF3m1I53Ka4C8sIrkW74Z/ZCSjya6OcQoCo/cBhtLDRf/Aj4qh4zM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714122743; c=relaxed/simple;
	bh=/Nn/+sHNlNkDKeZy18+jaBFGqF8eCjSNXr8QH3L3mmc=;
	h=To:Subject:From:Message-Id:Date; b=b0XrR5LtKCaBDs58wW8bDlvG77ERBkx/zyMtTw4f1IbdcLSNa9IxciV3ISoxLgE38O1CG9AxTOKkrJuROtVNH6pD9eGsBFqM6yxUC/L2+rnOW1mqpzcW+My+XTnk30HAa62hXo0QeBFCgqWzjwBW6qjfw5YGj7nINpYibgipIbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUC2BI7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUC2BI7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D0AC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714122742;
	bh=/Nn/+sHNlNkDKeZy18+jaBFGqF8eCjSNXr8QH3L3mmc=;
	h=To:Subject:From:Date:From;
	b=oUC2BI7bA6AJ2muHC7y35EoAWaKQXQx/9p5KDs+FaDzFQiPfwy1emmuSWvmYlxnQF
	 K9/52jL1JfGxqtFXul47hc6D8JDNqOjCrttq7pNkp+L9d8hg5SuYfZ3WLLPU+p08oL
	 XJb4GeRArmsVbgmzggi/MxSySWuiHAp0/AjrTF9KRoFsRVQXUKb4coO3mptu4toBrF
	 nIzixW6uRvMJYXtrUqGr/C/tN+t2dNUGVLS+IHuAyQF3cManQra3TW9R9GvTBT7eBJ
	 QSxlNHaf+2bgqSPXy/iimsCoAIR7upR6ukDq22+sYJ3/XJe+Bwyxf/rO2UHjE7D70I
	 AhdcapptKgWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F7EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412274281.6696.6820444606183547376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbde7f7606512489b8e979904e14e6a9a189afeb1a0be3d4597945c8aba1ff9
Date: Fri, 26 Apr 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714122742
