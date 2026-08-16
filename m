Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE26EEA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786905634; cv=none; b=TMkTHvEtAKf/spiw64q4Kh0mh24ZuCoVv5qwbNWc2I1k0GzTb/gE4Uvkk+fLLdZ7Xz9ZdNbe1/NKL0yRnTkUtvZTa5FFD6fa/J18XYAZvpP+wwiAQ4jGqZP1eXnWVMaKvxpqKsm5+UgEG7IX+SnGGkkV1veuxONxWmUbgC1rn5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786905634; c=relaxed/simple;
	bh=8L12Tysk9zh51jJ0sxNpKNRzCkBdks6vxeUSYG0/d3M=;
	h=To:Subject:From:Message-Id:Date; b=jQwymijOJp12xHuoHjPvL5z4NZaw+/KGwLGuBLNz2E49b47r/j+JdR4Mxzx4Ln1jWMzI5xI4+OLcQyWVgpo4bnz1I5/bSEdtwpM91RHo8+D3Ve5B8PQzTotRwPuHO2VuaMt1kVzRPXegqQptzIh1Qq9+6hh4GMMD9P9Y4N9Cqyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDsCgkFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDsCgkFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC193C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786905633;
	bh=8L12Tysk9zh51jJ0sxNpKNRzCkBdks6vxeUSYG0/d3M=;
	h=To:Subject:From:Date:From;
	b=qDsCgkFs3WxR6Vtoh+m+hG1OY1RA84T96qlsfhX1Fa7DS7wXhHQ79chPtRD9po5pv
	 YQ9BEcDxsHVCjbSHm5Q8ne1PCzkm5sXx1lJ9L7YR45ejhs2U2BTjhvxjFUi0t+frrC
	 uXaqsHQLXDO7U+l2ADR7EINa+oUz60C8aVwPzxSap7ROt5CKMTYC/ZiAH7W/P/PROy
	 sDsk9C1Cduni+CHWchXj0WegYR6EZJ76NOaUx6gMjozA9n7kgaaeRkAb5T05/0E0fO
	 +MTWKtpEcFeC92gpiJZ4niRWi3Nqa5hQ7e3KUYWDon4B1tqE6x3mY5/gh7+jvFeV/L
	 qhglVZf4qpiCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB5C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690563369.19320.6972569635254436723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b378194ea4e9ea4ec02d26d48e763f3d13ce2a5dd80d16a927742bf93c82c7
Date: Sun, 16 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786905633
