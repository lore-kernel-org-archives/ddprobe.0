Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA152DC761
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763446314; cv=none; b=kLH/SlODj6MpzfGdk2YllEjc8999aqG/ONhISkFwCi8/hSd6nyZBoVW+cHwKp+mwxnLXQN7K5J+v1o+bDv0y5dV7HziPLJoNG4MvULhrizIkbTvxadp+MdfY4KcUicwdNfsjFyaTflTxAAjKB+0cMHat9595XOJ4lBb9XYyhA+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763446314; c=relaxed/simple;
	bh=x5Uny40eKA2Ko86IAABQv1u8Fk3OFJ/tUBSTqpK5Uik=;
	h=To:Subject:From:Message-Id:Date; b=beafv6CqOSaVD34Oq+86Gb0ICODTufvRDF4D9Uf4q7PkYhys7Qx/WJOAFRxDsIXW3rBm0YTErR0+ye1aJZXl2qFh3lCkIN61kLwm/jYwxcSVtDRh+eHMFSuGE7Ard8Dac2J9KiZrqu+P2Yhbj6wyknEKGObMetB+D68Hqk7OCbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRAOhCP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRAOhCP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C541BC19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763446313;
	bh=x5Uny40eKA2Ko86IAABQv1u8Fk3OFJ/tUBSTqpK5Uik=;
	h=To:Subject:From:Date:From;
	b=WRAOhCP3E/HF6YsYrVAKcU4HrLUymuMM86iR1D+8gIKFAMgDNTzhGnerIe499gfHK
	 UXRFKSmwVpnU4EXE7gmkGAUb0aPFDr1SZn7ViKSbFk9FafnHRC8DHmxmPykUiRCg9f
	 YqYbBpa4XP8HgjjZT5vFjgoIOY1Cw/gmIDuogcCnWFrNWN0qZp+0eK1E8AKthFNPlD
	 4+XZEHwYXddEHl4uttjeoWbN1XANjj1XiMyuiUlevQI54lDLIpFXrsNH/NuDuOTFY4
	 1vvWeZiy9PezuHTRVAG+JZTz+NhOnBqN4WS+onK2WzAhXwcxhA5fyX+RvYsh+AUTZM
	 OBVo9G5yVxhZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCBCCED243
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344631363.8728.9309752595035386097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b166f1304bc4696402661508ec9c32808ea30a37cb2b8d669a66ae2e84ad16b2
Date: Tue, 18 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763446313
