Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E3D33F8A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760728794; cv=none; b=sUuNjrmb0UVkrVy7Q6Wue8QUYDr8Iqld04ILjhDY4cnNW94lHICH/dBcspdsGBRKO5URfPBk4Y3cNqjgpyKv2zJEtxfoSBSOFzDhgex4jZWIlPJKm6OyDMaCSe4gBKfJ4vw/IJjfEAAuxGVNppG/siRQovJmXX0rpU5/YnY6Lhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760728794; c=relaxed/simple;
	bh=wU33IIvRIAWVl4aTDr7LYjfTUIS/OzYaWE/GsLa23iA=;
	h=To:Subject:From:Message-Id:Date; b=fcyQ7xi/AjxBGpvSTE1mJduq1cA92tqyK+dnFjjv8MpQyHOsnuRPmNsJA42Ydk+ksSq0wJlqDH/0of8vV4oYNmqTrjxcAzgeWc/21Cz5r5qqiQOpDzfdZue8yTmfWEiXmnXSo35tJwZYydnjCVy/9f0pG7q335/aox0/VINYjOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUmrDEds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUmrDEds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8ACC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760728793;
	bh=wU33IIvRIAWVl4aTDr7LYjfTUIS/OzYaWE/GsLa23iA=;
	h=To:Subject:From:Date:From;
	b=aUmrDEdsZeAAtRKQs0BkqHP6aV/HFLqIW41k0XIzjeMr6YXhIkJ0PdW4xsTmViGSy
	 36DkBM6pPIXYFFXY4LwM6r5LmqahUiM15gd6CxWvLHIZiDHlK9VC+hExVFRQ3wLmZI
	 YNlFLaWBb+Adi+CnvLsGGg/I97QgoCVPXlskF+zrxo3oYUztulPnbACLiWcvn90+g9
	 9HU0oBEaSypt661/GXkzEFQZrYSjBeOHsQCrgIVqGY5QVwpaZ8LiPdC9872gm2LSFG
	 mL0pdFSqFn5ugdI7NtDiaCw+xAMtEKcdSVGMroUI2OCf4ZjpupjEAe3BNc1TPfSiJO
	 Df8KNSBG5bM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95084CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072879359.25758.3727576253946206978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884571697bf99abedda96147c6a9f3e2cce631b9a2135e332760b211b01530a3
Date: Fri, 17 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760728793
