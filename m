Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCD331E852
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774591494; cv=none; b=Ds8XcG/h5Mdd3jhSc4sYzgPq0wd9QLHdQIwOv799EHfISee8X7jgODApIaRXq9FTl3WekUxK3GfGr5rdKjl53b3aqanddwLuh/rwgGDwHL9Qa1ck2sQKW0ZOjeBi5Z1f6xKMuyh1VuMa0zxEwvWdcwxFDJ+BxnTpVmP3O0XQU/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774591494; c=relaxed/simple;
	bh=ERKXLDk3dmgq9f7NVdqqt18/R+VQAVab5PhcH36nazQ=;
	h=To:Subject:From:Message-Id:Date; b=Avl1oByBMZhJLjKYpQbi/1z7i94Hb4qK8D+PosAdGlkFgK+42qvJ3BLuyMXAfBCjDeQvhcqvCDMFclZQVDtBZm/8KHIt4cBbiTTOxS1yfnE5AIiSEF+XR2e159Q4I5iFaMm/kwwY2+uqJX0JVQ9uUCntGn30yKxz1NioZ96BYj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9FGUKXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9FGUKXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7009C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774591493;
	bh=ERKXLDk3dmgq9f7NVdqqt18/R+VQAVab5PhcH36nazQ=;
	h=To:Subject:From:Date:From;
	b=l9FGUKXaXC2rawx2E2vryDWX80vBlbMl2jXytuzawFNR5FKgvoH38/uJNic6xSM2f
	 RLq9LGyXbGCpcQyXYrweWgzTqxcLkswbXG87CZSy1wRh+W9jvFSeUe5L4pDqDoUUsu
	 hPXEWHMLTSGh0JNkgVy87FQoCUznXyJZpfY6GwCEgxCT8w2CsXh+IHvqB4uFAv0MLt
	 gDmft5zjpQc14fJ4SFCDbDdsD/23o6JqQPQWpqR13oo8WLu0WmhWp26IudXaFd5Y1M
	 P67D8eyg/85TKqCURDFpBFbFppcYcbR2fne19BkNRYtt4wfAh1e9fQdtXx91D06kP0
	 Y1XQf5fiEgnCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9612510BA42F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459149360.6653.1912844042818828125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8da9eb0d46c342c27b28de7cc1903258b2c79edaddc58bbda63468372139e31
Date: Fri, 27 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774591493
