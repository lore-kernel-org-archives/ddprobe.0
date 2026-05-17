Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3464425D527
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778999434; cv=none; b=qpq2Avc6QiZpP6+9Clq/jiHCPG7UUiSd3VSxv0pXzrsEqOqlxzioWdMCxvcmNBlORNqoRhWXf4ZRyLd8/PxSF5T6wvqwDl6qSbhv2SiifEUnE5gFC0aK0qgNtpkHNgfiT4JXkBuXGpr1EpIvPGTcgZXUzGCFfmY1CdD7/4FdMIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778999434; c=relaxed/simple;
	bh=wt0qS5t9Sn8hDZgqt92293bfZ8+nGB8J9+9k3Sxz8w8=;
	h=To:Subject:From:Message-Id:Date; b=EHs6ICQmcE6ZDB+Zb0xJYFXT80qy8QRRswPWch29hRiDIRAS+zobuDlq/ppDbY7d9bPMTmoDqwdDuYd/qN5hD6oaQ4VN2vYNY4YPte9v1A3NuZlgSAwa0m1ssanlGpZu3GhO4krRRO19bmI8Y9tK6dEO/TbTSOg7raCCI6pYrbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQzid3v0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQzid3v0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78DDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778999433;
	bh=wt0qS5t9Sn8hDZgqt92293bfZ8+nGB8J9+9k3Sxz8w8=;
	h=To:Subject:From:Date:From;
	b=fQzid3v0ZdOhkjyjzfVgTkrk/2qGC5YFvZbERjL3QXQ+EWESmKxocmbT65y4IVg29
	 ukkEKGz5QFKBl0CXDwzmFR9Yzv2eMby7tbdcahQ7ZwYrdB8u6fv7sx8Cqz4YJUNCnw
	 lX48hz024KO3IPXWWfU4UFMDQTmU7LO9SyTu4oxMOlc4DHLSdwY/VWx9qrzouZZBv9
	 q7XijLX08VMCHownzKcLGO599nlSMn0rWV4LthQAy8IWsmwuLP7va8i/2LfDZYMb4Y
	 u7BkuB79u7mvaxWPqPIw230TLcIYSwD7H1OzHTHN5Ci7JQg4ldrHNm0eo3iQ0GkZaz
	 ve7e0ZTwcidMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129BCD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899943370.23557.13271934431660805269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5b52d932e8c3a16db23a8c49e19349dd5daecaa147cb2ec3f3d91b1064095d
Date: Sun, 17 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778999433
