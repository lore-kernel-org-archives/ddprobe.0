Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1CF1B3957
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742319593; cv=none; b=guJ5jh3i83kUb6+PDXfAd+w07FHHzMn8OMS3P7+aGIt5k+EexNT1rHveQeVCqW8gWS/eadfUsgdHXUdFh8iLTcNRrNGy1hwDqQJF5tk3WGzX6HabOYuF1wN1apq6Bp8nRFK3C3hi+Wyo7MqUPmN4Ok0BH/Z2Rgdojw4ax3F8FMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742319593; c=relaxed/simple;
	bh=tIKoJ5BNHMEoOfunRFUqmZ04YVTkEltUtTMKIAUD53M=;
	h=To:Subject:From:Message-Id:Date; b=tEFJmTii9ez440c6RAJJr5r5DuAUCQyvsjSXUo+5yBSqdZeuXbmRP1jMfWWYFOTQEbez0IoQUceACcIaK1mFVRczgioGR2GtL53eHm4BsSxA3CrNnboFRc2zlf2cWsz0zCJLOTfLIZ/OuOHFZ2j2Tss3SYsWzc1gEhIV9YZnSFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaD7wV1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaD7wV1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC1CC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742319593;
	bh=tIKoJ5BNHMEoOfunRFUqmZ04YVTkEltUtTMKIAUD53M=;
	h=To:Subject:From:Date:From;
	b=ZaD7wV1LxoEXJL//mVzzaIKlV3zToqKtGwZZ4UFijPJyrpFVabg6KZLQ0Ww1Xo2Ih
	 Iystm9buzdSYKoI6fi6hEJ3aZQBKwtvSxJOKMtvwzQgmditpqrH6NYVjVeinPJmjSc
	 N95AV4VNE9H73nenNhY95aEQAXxcOKivxKzVlgCzKvSYPmcYtO0RNTccjY70jU2dj2
	 6Gnz4FK+L5/+BeOAUYo7OBv5Oo6o4+cUklADEhP3lqd8v6vTlzaFyvuH46r3QDhpp9
	 QUKbj6250HQ1CDvjSOcwT4G1emHMhzPKuLPcSkeE1UzOYrcRNOhSLLsuaFIx507XLM
	 mvwFiohA5UnLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97946C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231959359.20348.13741953686955756244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26444f177ca09773bcfac531857bfb31faf177f826e3986d45e07af1396ea9d
Date: Tue, 18 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742319593
