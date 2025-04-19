Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BEB647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745069394; cv=none; b=iJyBhLqyGkH2w7iFrEIixxCCB+k2hFGTS1u683sok3znZFQ6q+2HF7aVd3HLB8GoUT5x38rgJUxuFxy2BFVWPEmjfEQBW+yvxcqAryr0hdnOGeXud8u0GYr+RLjEWjo9ENrTuDOD78yR9ckbhuebE7qnN2CcIXlUBHNlyerosyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745069394; c=relaxed/simple;
	bh=MAhSIbsGnfQo1rzLwX/LlUlT+vw4nLKv1JKV3iskLtM=;
	h=To:Subject:From:Message-Id:Date; b=FckTmj/VrTtDJvrnzsPRJFmizIsFIENEAb6CYzDL3Rzy56ZOXWDv5dhnHdZFjBYW/hPmHAoToI2E7A77iAAjNYct2rhu+CGRMCJtSGgdhnON3+m2JrBtTCX/GtPgrMZWKtXtQZIqpJGUD+SgA75uuatgWKMoDbibtVAOcChUvxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQWfetqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQWfetqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F81C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745069393;
	bh=MAhSIbsGnfQo1rzLwX/LlUlT+vw4nLKv1JKV3iskLtM=;
	h=To:Subject:From:Date:From;
	b=uQWfetqJuGoKK8dxhzuClTnBOGSyV81tyUXQpl5Zrf1rLmRwVuYL8ye6ZO+uyL6Ld
	 3QahJo+cZIYOf5ZsVLw5IuX2YNWUZRDnQfYXoG4Ih/b9IOhy/HcT4HaZvP8HeTrIXp
	 iz7Q+TwooaJIqVIfzNdrfPQJRqf8RogvRlAgRVPgSsjN6g4DZOD42MBgDQ08hspoHW
	 cFV+dJncMj4QB6md0dSKWNVQqDpft2T6VFSm6iuBDxkIJMjwXxE+k+4BvJ9uBEACtR
	 JCfk9uOr803r+jRt8FsTFJtt5oDiNc/BobQl6XbaTmO6VCRL2huh3BsjObma4Nb3RT
	 RK2olKTpw0z8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D08CC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506939362.5226.6288224724601863134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee35238ffd8eddf38080e60b47fd8457777853424c220a33b25aa89bdf3c70f7
Date: Sat, 19 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745069393
