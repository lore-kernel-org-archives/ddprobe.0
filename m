Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE3D4F602
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724576754; cv=none; b=VpJ+Rhracg3MCQnicvYxHs5v2Nc1MlfCihYA/mLxGAJ7r8lMSuxTdKkbipCNcZWFNFqkp6qyH1KepDLrDCYCDaKihv2iJSZV8DuSG/iflPIuZTok+o584YF5pztXibMWEYJBm1Td4Lh3fwnS2hFPC74TPOV9er7PlcPjIdlp07A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724576754; c=relaxed/simple;
	bh=BTpE9ZFh4Xnma7WtXO3B2zd3V1D6jO1Yuf8EnABkDXA=;
	h=To:Subject:From:Message-Id:Date; b=kD/MGDq6nEEnPS6ZZ/IhhT3/ZIJAOCMqZ5TT8sgyNU5SzOycHfl+WNq2wTn0Dp/5tAt0FVDhxwLymyLfuqOiUo8pXhIJIOCUWX108UiH38wN+leYo9Q4NJXRIEx33V6gF9UWJcQPkKnt88vYbVQ4Iu18IeJzR4YKJMMZWpg1CHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6RvHbFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6RvHbFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9487C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724576753;
	bh=BTpE9ZFh4Xnma7WtXO3B2zd3V1D6jO1Yuf8EnABkDXA=;
	h=To:Subject:From:Date:From;
	b=g6RvHbFk/Ws5Mp1/gCFfzjowN55qn2WN6PyvnFR7hqL4dtY7wWt3bOCjYuEYkts9W
	 HQSNp+BESLAgrvJVo7MtyW7SSkoM13m+PMnI/fVQkuXEoJQpK+ZVRv1jVyQ01bce7d
	 z9qe4tY135m65M3iMUWvNvQ6X4e9GFgd01M4hKBtzTkZSdXDxe2nEnvnIhTmj3fUNo
	 EXdcrmJ06I0yr0t0wZWCsoIkRn5tPA0Ku5xvW80M/l4U8Ouk3pZHJKhrKy1G0L7Hjv
	 DdFV4oBMkMQ8+2aoeE/OF4RIl5xWB4tRtMXlJIEVxcBS68QRGxv+aZL6w2D0mlE5lj
	 0lxXljDUlVTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3087C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172457675364.29574.15452137555681514889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8228dccdca060e33c82bbedea0589621d0ac6c304d7eb27725a32e3f064481
Date: Sun, 25 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724576753
