Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387FA132117
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739411934; cv=none; b=DcEPnLTZ/izI+YJFLE2IUyGWHHcztGz/ZtJqcALeIl+/hNJ5nYoPvLV5+Yh4VoXdUYfI5b0wuL6bQMWN+ZuK3TC7U6UP9djf0tB1a5pJT15BALFAPtjruogtN0BxQnMPnNYJOkhGhO8Cd1wpg/DH6blLy4P7LPe2oy7DNGkgS64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739411934; c=relaxed/simple;
	bh=Z9V0G55MvVp+o3eq0av0pZJoIOeQelQSUVjW1IetzP8=;
	h=To:Subject:From:Message-Id:Date; b=MKwQaPP6z1dQ9fGek4baoPt8AFtI4I2QgNvHna0+dotQOXASHM2ChyMntyPRtqeDmSZYqBF2cE2FNam7XaSlPMVeK57auapaudRIpbP0qWpV8kJ+TWR2RsSwxgeoQvbnYcG3n7YsCsQ2bOhXzkGDquAJrnGCCHmf+kSK23Zf51A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqrjyOGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqrjyOGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8031C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739411933;
	bh=Z9V0G55MvVp+o3eq0av0pZJoIOeQelQSUVjW1IetzP8=;
	h=To:Subject:From:Date:From;
	b=IqrjyOGrAtiOkAGaIgFgUy5mQQopaV22y3XfCOFKJA1PBP/PtLV/NVsONbA5qgIUP
	 NwybpDXrGxCYJh1lpO41wqrZGLxM8uO4STcH5Czn/bl9x/YL79QhucmvVrsyTSHEBj
	 9L1XDTyCoxpLD2GoeUgkA8omgOQw/YIW7CjxaZNOcTGaGGdwn/jQXxmTjz8XGi1uEW
	 7+jKbBYsInjKZKHuHQxIUIEN58UYNqz9jVszONNynxZmNf0KNsBXT08aGBQSglla2E
	 2/mLbLRzwJqhmi9XPiWBFDQnr9uhbK/+JtKJsn1U5flAxmz7qaFd+yCvi27OCb/nVq
	 LLRwwJYOS8eGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F58C02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941193359.31883.11303018620267055092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99517882e76de0431d94aa30126d13212eb69b453a787582a83c253bf99b1a60
Date: Thu, 13 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739411933
