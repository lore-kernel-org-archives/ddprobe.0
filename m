Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7670818
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774325094; cv=none; b=PdSX+hhgAA3iGva+aT2BOSDp6sPYxO4ikEC0J9AspeAvM66b3tcaP0xlQMfftxaPPuTu0oHWGbKWTgUEA3BOLKgaQW8jgxmLmmgpkUeFkItI6YijQAzvPbhpAxt0qGx26CX9+D2o/kZlwwY9JNZadqZ7+Aj1YxMhp5qbZqY9H0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774325094; c=relaxed/simple;
	bh=cnYLGQQY5C5/xhWxPPmVJm4gHLVtOiP7ckGkTZ9hkZM=;
	h=To:Subject:From:Message-Id:Date; b=ueu6PR+YnQI/ZZbNTNTOu4MkVV53xGJOXwiH2C18gVHioafHOXwI0TpFbVkC007S1OVdw2Fp76vZaw7cCpe7o9a4vgjyknuR8NHhTain3xAiisq3ItxzmqopQH5XQIRq04N4ST3Opo6gGWilrLvAYK5wuRNy/aeXj0L1/aGrYeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejZCivrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejZCivrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1260C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774325093;
	bh=cnYLGQQY5C5/xhWxPPmVJm4gHLVtOiP7ckGkTZ9hkZM=;
	h=To:Subject:From:Date:From;
	b=ejZCivrMBvnfZhvtDtF3cBnhXXu8CCXIxluE8y4bBSqRd1Y1rhE9g3QAue+ZnkYMa
	 HeWu1CeZcIAKjYPSD5TFaQ5tIuXZzO8FRc8cWCd4HHG7eGXlVmFfiSDOTJcrj+C0ps
	 Sboc7ObgIDcuGzdacVisYEunsZOXrb07oBnZfG+V98qZ0wLc13FV7/j4o8n5ouWwYi
	 FB84s0e65rhs/Lo70tEd2szIAtf8ydbbIKiQ8hAew1a+T+/10Nxtbyw/QMBnrP8mK7
	 fGWh9qN/KQDO8isvDrppDsBMvpZFqUgj6Xwf56lIDNf3TyRxNrI2w7kIXXSKBW/b88
	 9nhcj2i3dTJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BDF532D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432509358.3360.17230751954121043738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0812f878f32b76dc787edacc6168c4a8abd3b829fff4a1791960b8ad0cab4c
Date: Tue, 24 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774325093
