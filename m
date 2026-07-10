Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD6B379C2B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783660114; cv=none; b=h7avbXUkDp4WosQE6R7HGOp8ze1kqtiLDffkgHuwEMKB0Iu1k3oVjAbVupNM7jx6mnnCz7UgK+p4ka8naRmgKnOQtt1H2/8lP9GSmbFYOIj9b9Vo7EWoJjZLFPt+2kC+i/A06aijwD6glwd4jO1VfpebJOx04XM3hUt9eKzzl4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783660114; c=relaxed/simple;
	bh=egqSyHLsyc6tYLKZnHeKDMbDURlDfwFHwPteH3IaF/8=;
	h=To:Subject:From:Message-Id:Date; b=d9lsm4y5oOXxxRazWa2L9m5+ALfr5YN4rEUYypZGC1xOljE8VqGFsftiiWniJcWoOs6cILcAyBgdWPhhRRinaXsYs6fnJG7MP0QLcquNm7Lmf181HUTMbl6sZjOQzCyNNAx3nL3GDKJZ3LhqgsyWslAfklqNL0N5JbHSrPnsLYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GniBq1d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GniBq1d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAE7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783660113;
	bh=egqSyHLsyc6tYLKZnHeKDMbDURlDfwFHwPteH3IaF/8=;
	h=To:Subject:From:Date:From;
	b=GniBq1d4OSLl9kEvOUhZNwsR7J/ClLDyu9SlJlbXU1VVubwSDp3WChu6iU8QuEW1B
	 qi7/LPqtstI/QU0yk6a0ieVaOtBr0i156WiOYbIxXKIR98/u5VIQf1mSVPotA+wISF
	 +pI+2XiBDcgJNGOsnUU34m++xpmKVTq7cSNtoJ+l58BiAZ490aAaTEYptsacg7ZrZ4
	 Vf0kCGzHB47XsmXeu7v/UJIC62q3gLEDBF3tRFUAlWg7A06vaDwMRHVnVphGjot3kM
	 hqcq5sXfplt4oJ6QuneyuqjDctdJVT8O54D8GnVCzGUjJZpzLJ8LKeCwh3u5Y5imnf
	 RCd2lHa3fSxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A41C44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366011368.4966.11982324061521303208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab14857d36442cea464be3466b81ab26c52e378f9da05d87b3cf60a8e572dee
Date: Fri, 10 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783660113
