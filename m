Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5DF1CAB3
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755562795; cv=none; b=R3zjMCF590KEXSrr2TaWT+Lz6FmdBtUPlXkiR712ZBQmmOZvhOgwlaF4q+8YAu40Tt+/YoMvjTE3WzGecK5fc65yzalxVMm1iHCFzeGyq2PC2GK0LyYMF5KpLZYHpytxw7km9FAu5uGb2z4PdCRucCc/b3Re/mwYVOXgZAQXpsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755562795; c=relaxed/simple;
	bh=u7B0OO2uT+HivsqwnrNj+xCN1xRSWL7ccB9RIr3GzUs=;
	h=To:Subject:From:Message-Id:Date; b=oShPwrN0R9PxO9kAOjQABMFccNKwbsXGa1h9Fy+9q3FIWQQBGJbos/VELZ0VcHlYkJhHkOYeVJKDCMrHj/185sy2jHcgCAjc9IplcYOjK5z/zLje/A44gRNHjUlcFG5k2zI/mhw3zqJXw3G5ptHPFAHJ/BToXO7rnO6ZOpHMp3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0YCA4d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0YCA4d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A79C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755562793;
	bh=u7B0OO2uT+HivsqwnrNj+xCN1xRSWL7ccB9RIr3GzUs=;
	h=To:Subject:From:Date:From;
	b=u0YCA4d/wGBvqvCsJfnp1Z+WDSdCvhajrBFCJjo/w9915JYmLyXV616GQIvMSTTBC
	 Y/NGWP9TLboZtNlp3X4HXucsBkoeIf0mmmOcjrCAR7Me2v6B217AIs1jLNcgY35jTh
	 lJd4KQMZvIVenyQkgaBuEVbrZUFEEANtBvPMh3ud+a/R3Q7KwuM/zD7htdSlmunORj
	 rsplKOExfAVE44AD0R2TLW73R+GoDAM8fUgYVs/aU+HxohIFaulbUhedOfh4ZCeRpd
	 OTFPXzrrsCX8DOEAaU9AvA2g/1Om6efInTzV3yuqZNgXN5WyMw0C/G/F/hfQPpZ/Ei
	 c6KhhygDqVNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD14CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556279358.5772.10298100523234015257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b543a229e941ebb7adb0189aa4361037300845cf9fb23ef68e546024a61304
Date: Tue, 19 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755562793
