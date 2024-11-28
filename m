Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF49712E1CD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732801553; cv=none; b=NIUM1jkS6dpUq9EBu3y5p9Vz8y8Vfol+fbQufPyEOMQPyESfeQ9DAJ/iSawXatC/h86pR7AoezhAa2vJGObs02x27K0Rtya9x53vJMM/L/IGRmqWyTTkjcOEj/5eg3E8iy69jvENfQ7/+Nx6Ufsa7nBNmCVR9+K60LHMmYXk4Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732801553; c=relaxed/simple;
	bh=mAx7N/6zDTonNpiSZHFSIqAHjjoxKaS9y2BDbZVrPPU=;
	h=To:Subject:From:Message-Id:Date; b=TYxzcHmD3mg1vBnA69eAJhZypGsaLUyQuD2LbLhTFmq7FQ/nH/DyahvONko82knlTPu1k9i+hgyBYdFon1fdjhFTW5cA8wBt66+7dzhs2YNRLAXiCRoZuAcvs0HtfpQpyJu4xJ82qxRtriSdl2MgeIhPFxnPzdIW5M3sH4YVaZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cB2LJIri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cB2LJIri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE981C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732801553;
	bh=mAx7N/6zDTonNpiSZHFSIqAHjjoxKaS9y2BDbZVrPPU=;
	h=To:Subject:From:Date:From;
	b=cB2LJIriB3EC9Hpif/TdJYZ5X5VvRjUO4XLQ4PRDahalxaKiDxiXKdFH7nb0reCU/
	 DZbXk65o4bH9Z2je5fzkt+h6dqyITfHER1KSm2eR49O9J8vQXJ1kjVvUK1yX+3SedH
	 rfBO5CTq+ywNKOgQmSOwK+dDeHaWdLyaC7zbuj4r+EbarCSRuivLt+lNMxx5J9nFV3
	 bxPuhkvNc5dYoaYfkILLBfi+W/g/4EXYvK56LOsDercectBz2GVRrJO3gYKzlrr57W
	 B0KxmmEtg0nYdkTJ6vdx04ly+DilGWVdcLM9NuPWG9zcPQ9/nr9T6Ga1fWGECOYfCc
	 4U0q6paOW1w8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB01D6910E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280155362.10085.18011420501694883270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe1972da87ff345111664775ccb2753b788ef3bf8f72977d27ba6b5ae59f082
Date: Thu, 28 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732801553
