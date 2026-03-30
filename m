Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1904314D13
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774855494; cv=none; b=V4S8a0oX4N9Tu5DEtj2KqgSDsCn0SBy/cA3eUG7ThJ86zVUVGF5KxIX9s2nMAVgcxA+rFQGtOOUM0UDXbsRHhOUg/gLHz3SZwB9O9v4T3SKfQ+ZWAfMTxXgIa+F8Q9MxhNe8ydXc2wkRQBeDA/U/yrDmv6Oifzi+rxRnKvrkNG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774855494; c=relaxed/simple;
	bh=WL63hHeoWgE02PsXLIR26vvewkKWMsBCojA3RaJ6UOw=;
	h=To:Subject:From:Message-Id:Date; b=G3eDzYFba1zkS5Xpi1QOvMU0WqqmLRH1TA1oOWN/IxUrqbKfxCN0TtSRgPDvpf1JKwkg/0BCDcaY9sH8Rzb/Obm3TKcW+3Xd3nX4tTBJ/FvNKW6vEiGtWeqMRHLNLvL/pa6szY8APwHjuAKOH9SSr+Vs7KgL0FUw6+32eLsCX5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNCnOUz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNCnOUz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 978E9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774855493;
	bh=WL63hHeoWgE02PsXLIR26vvewkKWMsBCojA3RaJ6UOw=;
	h=To:Subject:From:Date:From;
	b=qNCnOUz3yRtdA9bfUkdWxNfj0YShN2CnVZQGgeKYOouhT0+vcyFIWj7WKwNamEFRC
	 xRAhqnFeY7k9bHhGNaeXsth10z5C2K0XQGMWi5OeQJFto92Dxs5uVXOcrWpIymDW0R
	 Unmq0k6dzxefNVwyr87X5Ev8yG+9mF0RqqmTO4EU+T+yWo2dtLvhUZmdXhlmYjC0de
	 06GCrw5PhL+KAC5M7eknACu8toDbmdt3Y57paUQihPdSAv0w3dOxOLRtcdtnSril7r
	 Rhjg18YHkVozEM+oR5zJRttoEed/oD5mEPiQYPm5zhy1NWYRf2AuCNLv2vwrQgY5V5
	 En2PECMqrxKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA3FF4956
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485549358.3331.16912205871417400808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa04599734221562d5d0f7ff42a3a6c5f7598e02720598f795ce045aa3e7c5
Date: Mon, 30 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774855493
