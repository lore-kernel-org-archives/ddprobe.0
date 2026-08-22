Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D69537D131
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787410234; cv=none; b=kJni97lFWFDzMly58idOzJYWRPh5G+Bw6UV5PtCgE6Gh0Sbbb5fairaEFe/2ZieMgQGg6hAIaLHjIy09lwEnX1kmOcjPua0XCGqGI83a0IZGQSFTlxNvT19tSKPX9pE14fCMQw4Upbfm6WPbfX5/0WKywA6exqjmPe8BgTnq/wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787410234; c=relaxed/simple;
	bh=kJoYUCst6O3SPS988ZcVWtDYqLf32ld1dTHrvl4nP8c=;
	h=To:Subject:From:Message-Id:Date; b=cLZBARQJ9D2NS9bvR0IuiPL1Lfs1/vUxgTj4vHHFshD8pT2zBKZ1wdMKnG41N99dc3bgZvVdVvXSamVDGwLjRM2eztPKgVqgCutkfRPSOk6XGZAoCO2BxgP67qp8T0bKhSXYhlOGvjNrOjAcLO1pdoDa3zvbzKWac5A2oMXcYfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCg+x4hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCg+x4hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D752AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787410233;
	bh=kJoYUCst6O3SPS988ZcVWtDYqLf32ld1dTHrvl4nP8c=;
	h=To:Subject:From:Date:From;
	b=HCg+x4hAzojp8LEoNWgkirc+3d5T8a2MwOd2TgZEoLmbuMHtaPhN9QXhMdb4J9SbR
	 vSTsZ/CMd3s5cS8JT1ByzSCkygAZdm5j1iuXgAPoIanovqZpDMfucMbeloNYry2n4O
	 fyFvbf8VFzxKyJds0G5aoBdf1piT7sVCLdWmvX/R338d1TBwDZgozL4we7bE5sbMR5
	 FJdRUQ6DIBZAlFz6nne76bSExxdir+7/4J0BkTvuYbq5FXFNl+E/rHttpLg4BF7lmI
	 9Vh4kMDgCoTn+n+kkZyThRPh86JHHVwZb1JQZOfQpT7wXjaS21F2yMeE4AJxnzbHtl
	 d7hA3JYrDnH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1048C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741023369.2486.3076124253890645288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5de1b344b59d3275a54a73ca734da5c0720df0b51562914240a92e4d734fd9
Date: Sat, 22 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787410233
