Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC262E03E4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788767434; cv=none; b=Af9s7+iW9dPzhMFp8XDu901fQ+Eo8aMY0/g7m2qftMwPhmKmLfqtEoWRR7c84vy6UffZKohjPzGJQ0PfEwDuNcqNMsnPuuodk1tA2RWF4eDhzxwbdIxwbsqYLELLc4Qd16d3UiwpusWgnRjfjAyCIH1sUTtCqEsMVH4p34RoXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788767434; c=relaxed/simple;
	bh=85FvwcJBnTeKjDTa6zG5sW4lrovC/uyC73gvG+27IVk=;
	h=To:Subject:From:Message-Id:Date; b=e4YkiQYECFAcvi2jVLyhRp7/xo1nVYVQSFQSxsVQ3UASIK9AlGn/ckZ6llWbcHb74rpqtrWuv8nGByDfK1MfvDRuZM0+VkBOjmXGD+HgwbK0LRXXsyfUmtAFVXMieHTLEYmepV2TmpewipOdlwMQyyiqgR/to8fDPJBH4r0V3Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwwSTPUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwwSTPUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E98C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788767433;
	bh=85FvwcJBnTeKjDTa6zG5sW4lrovC/uyC73gvG+27IVk=;
	h=To:Subject:From:Date:From;
	b=VwwSTPUM/tfuR1+YMPNIfn8UsjDqzaDxeWpcC4Aarb/KANc6PbSNXZIwrfYxgCAd/
	 36vJlTJj84J4wr4sewb+CBALfGrmfeC4iz+P5K7eaoB4fJ5US4hoKgpRpoSAJXFg1G
	 gtZeybs+bLSc0xs71a0aT0kFupcoA2Qo8kyv1bKgQeXvEm/LL1LFacMhl34HnZe2uP
	 7+rG622Vptl82pn53Iz0HG/XhapET/MhixSX7+E4awLWRRE08BM8HCtQ3N4CLYcodG
	 2r+EQArwaRRWYE4Ik9gA5dxZo6rjFBztVc5OYvI+3mO1cbtw+ahzOqr7OZIKkMacML
	 RtoqNfF+NfKxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AA2C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876743371.14185.16512006208489608418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a27f2551829979980877e0420b335a4b2023184387d5008a94673359b759d4
Date: Mon, 07 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788767433
