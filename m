Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ED63BB5A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759639794; cv=none; b=GjnIZu2fR81lk1Q0W1OyYSy+2QD45yHq0EH2xCFwnapmd2GA97mES8PGeQi7CC3pVtJEkdSiwEqeFHM9cowFdTIiqG+gJhentwtw2jH0vaxxu91LaIwYBFFN61qS04/rFDdKr4TrxRzG9jACjPjBGcvMSRbmc44ZBZmt8maFQ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759639794; c=relaxed/simple;
	bh=B2YgdPjLF0kXspDidKdyNdw7y5hDncA17eRqeeF5Qrg=;
	h=To:Subject:From:Message-Id:Date; b=WT6mRds2uDHlfhhPaWoBLnM8MkMQzElS71zQaBrvxC8oNiIadlh4yZceFyV5IR6T/vj/jzkKULAi8Rz+4T8Hq7jOIvVZe5xwGzLfWqS6GQOPVFitCsZxd30DnWx2pf5cQph7DZmKgPCVZPuw4knClyXUcQhWC7M7Ln1KZmch/0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mgc9crMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mgc9crMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F0C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759639793;
	bh=B2YgdPjLF0kXspDidKdyNdw7y5hDncA17eRqeeF5Qrg=;
	h=To:Subject:From:Date:From;
	b=Mgc9crMCsoGFRfOLjCx/2TSnxeOGY5rSD2GfWf7yHr1oVlD8KFIPWZP2u7PSHs9cd
	 6wMBHEbPB/u7xBTz39RIhe3tIE68YVehL79KbaROR0tEsxcfZV3B/HpuV7ymszL5x9
	 XDRH+V18JRTm9FHrRMf1ru6bDVutD9LdnXSPtRUwpLxj8mUHtH13GSsgfTIZBmL13k
	 zBxxxxWLca/2hHibMpCQJZXiu8sfBBqfHyqSo/ytBCqzROQ5CU3ZXEA8jzn2RfmgAZ
	 VIYkfwb4msgFWhhEK7V8BEehHXs6bYsVjaPoeQRQJGWXEYSWBS+ok/lRGGentkvLlQ
	 1WoUkfW7j6QWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81DCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963979358.26290.5831002648605993878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dee881fe715c62ebaf8dba8402279480a9ff5e68fea87f39adc0ea963124192
Date: Sun, 05 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759639793
