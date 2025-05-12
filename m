Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EE523C8A2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747094394; cv=none; b=IWHykvhelSacw/wLiaHBGsHGH/nl8BYSv/trTZ1fFWCpRq+DenCJmL32oMqHg5Zz9h83ERSbrUQKDFed24f3zcjYejnvS5+9yDnSHZfAXMcW+JrKklFUiE3XT4TEunzUD8jafU8/uG39FxgHveNCLIcIDs3p8o0efv9IjW5nT0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747094394; c=relaxed/simple;
	bh=wFk5Tx0W7YBmN3tiejPqHByEO4FGfMBQA4yO5hDeGbo=;
	h=To:Subject:From:Message-Id:Date; b=BB5oreaeaslFNoiMhLCo9vwEhj2xgR5lnQxghpNSf44NNC3SpxnViS3oq66NQlUElqaeI5OCgwDahrpdjttjpy8EzNWfjkwTpAoedRe3XKCuETLMzz6iY+vlSNARMycp9pvm/hJ+WnHo7zZoU8t9nV7cUCzHddZ1/Q4diN6RXfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPbOo68i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPbOo68i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB129C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747094393;
	bh=wFk5Tx0W7YBmN3tiejPqHByEO4FGfMBQA4yO5hDeGbo=;
	h=To:Subject:From:Date:From;
	b=FPbOo68i0do7ErRfu2FJZVFKGFRgD0IuR9AUg0T8K5G3tQfUWlo1D2/3CdyZDRpxr
	 PdAM4XMjW7mNwGPIT/bAgbJqBn2Y3siQvGjOmL5DF5KwMPtfAHlVE2alFJLnaXP5Zn
	 +PtFZFzSPsJEQPYwCJiI9HjTk1Rc3Cs1kQ5kXaIrEeDE5UaKkL/IVeJMjO7YSnuhHx
	 4a30qR/HS7J+ni8YkZLsBCVbwMXYnu/S1Zh5UZ//MANslgQ10ggzDUyOIpk2ehGcoX
	 h5nUH1nnM4DggStVPhnZQTmqhol/yQgJkqnmp9FHdkKtqmNamrhQ/UWh2ooNTPaCW9
	 73qZ34YUXoOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6ECC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709439363.26021.14528160957878777894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d902d7fbb3a949eb4796eb8586328678c5b4e8fe7fbf63b0ab98992988152913
Date: Mon, 12 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747094393
