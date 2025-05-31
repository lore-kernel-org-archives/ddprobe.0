Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CA241760
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748701794; cv=none; b=PdCKnDCdIKWSoiV+5IIdjxNb4St1wP/OUoRxB7syMLbY7Jh40yIQKN8Vnhm0d4orWDfBONKkU+BX69Ik3M2Yh49mJvoNiMmU0UrUj73gEHdWAhAZgBnWwYMpAR64EHrimbOUaMs8reN5fk28j4FvR9XEc2fKZNggE6adHBMs/7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748701794; c=relaxed/simple;
	bh=XXqsXuJVXh93CAcw9e5HeIdemvEzfMlhTaOnzhAInIU=;
	h=To:Subject:From:Message-Id:Date; b=lwclauWDXRUe6yJD03j1sjQQREHLkUiCBLTXjHKjhCcBikqLsozwBZL3GSegGPoLdDT0Tkq1YEy78uSNAewZkNF6cVp6bksTHiKJmItoW84Szeaw28rP3lKOdb84LdTN6Q/TBXL5M08aIQqQsqtlioCwyhgHL0/tJFW6ZR/5gFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQVkJGVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQVkJGVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748701793;
	bh=XXqsXuJVXh93CAcw9e5HeIdemvEzfMlhTaOnzhAInIU=;
	h=To:Subject:From:Date:From;
	b=SQVkJGVy7MaK+huZyaXDqZqLGLc9PXWqGzV1BxNJ00iLEPzxi8okLR4gzM9Rpu+rS
	 mLQ2gMLtV4nBRc6BQQ6Q3eUCy37In99hqCYmEhxAEV1hD1tSlxh7RAV63X21BtvqsO
	 DjNPpvOTt9chynLMdrpE88aJlTyTXfFHMkPwyH5O+Rpr/K0C4A5uIbXY8bSI+crmP+
	 u90GlKBGKq2RhyZ8dIP6SEBO9M75HXnU0F601u2MYWPb6OP7AZTpwUDsoA5IT8neb+
	 qEQsT1BKhlJ2m+VIztb3hf1KRiYyEeLvx3cDXkp5Fc2A8Ka1xLRcA3WylT7/wrxNS/
	 pBqufdJKRQ4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FEC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870179357.32137.775176947402292354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c38a9ee86d8ef0096b4f28a6f14c8b7aefc418ba75b02891cb44c5536faad9f
Date: Sat, 31 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748701793
