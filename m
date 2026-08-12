Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AB8470E8F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786554634; cv=none; b=QW97TYcnxuNIZ6F31NJXyCT+jEJ+kTm3yEpNrQDKnWpRDCcWVTn5GsP0Kf2j7gyU1PklYtT16DsCosc7BZxWHksdCL4NPppH+hhCaiTGGwI6oopSJtMg4zw/PZQWRu/cQ2dMoZBUtanuc4Qy0WHDTLrxLoC+gHQVoae7QId+cZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786554634; c=relaxed/simple;
	bh=kxfGHiGo3kyoJOJ/wkHlmrCFxS/LtXSySHlUG11ihRo=;
	h=To:Subject:From:Message-Id:Date; b=C+S2N554e/N+1cv2qOLiTcyZeSD0HudPG4Tr2UaQYvVqyJYbK+0E4U/DpVslg/dFvDjZGZilfPm0nzCPZz9LbfnOsOSC722NT9BNZVmlYnQrtjFpTnksXvm3Mu6pcXh7F23c+j4EDAUqLDc6+WJi1E1Dwk3IfJBk85fpt/6xOaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o54nkvQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o54nkvQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E3FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786554633;
	bh=kxfGHiGo3kyoJOJ/wkHlmrCFxS/LtXSySHlUG11ihRo=;
	h=To:Subject:From:Date:From;
	b=o54nkvQ5OtqpXWIhFne+DKjukwHA2aaQZZTR539bhTRssG/wr1HIXUP5AsIIdejyl
	 1cOZPYm0ppi+22IfpfKXaSRyJ8YLVinfmlL/FPr2OXnwJIBmnxWpbDeWmCaOj4MWvl
	 oT2S61RTaf29fTzcgMFddoCpg9KAJJEpV3csYLTPNVw422OtsF99sqeHFravWpGazd
	 /Kb+yYV/lQLNCWB+naeXaZKfWUhPQKxDl/ew+Hx0/wLzH26Aq5FZk5ld8YUSFeaZuM
	 NfWWkKZqLkBtAjbQpcK4Yat1/gKmt6DQVQtfq7XxYz/LpsJcmtQfK+AaKCCapy7a9H
	 BVKt7PCmEI6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0743C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655463370.20106.4955548215485667115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca32662d075be987d7aa8490ac309968f4ad96f8dd394b2408bcbee81d85309c
Date: Wed, 12 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786554633
