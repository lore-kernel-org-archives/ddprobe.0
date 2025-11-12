Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC87309F03
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762952394; cv=none; b=ShLHJkqNfffK3mEc8qDDsyZq+FgBgW9LuMFQVjX+7DEQPKiT1B9Dgzdna3+fLtgSVfTM3oFNKGTvSP3wBKPcu+RfEfX2nM72CXTK0jvkH6unm8vX+MOWV/kAwHOLzZqNEkpe8tIKzpBD2Iu0YLFv3Lo+omq73Vy710gm1MpVxoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762952394; c=relaxed/simple;
	bh=YjLTH+7T3WKrcWhToJiYNaLQG7/fCRFOU4ZLEBM7am4=;
	h=To:Subject:From:Message-Id:Date; b=kA9lZrOJGar6rrNZ7THwUCuhA3lok+DUGthC0BXfftxDiSMhtpdL/nyVdrstO8mHmwbonw7aOnWVJJrAQDQsdmET4Da5SPjs73B2y4n7hLCgmHFxJeKDvCSD6XpZgQ3J4g43ZHqlgVTeuyNB9KyEk2AlNl6wZZFoLJq3Oxofu2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYxLYy5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYxLYy5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E800C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762952393;
	bh=YjLTH+7T3WKrcWhToJiYNaLQG7/fCRFOU4ZLEBM7am4=;
	h=To:Subject:From:Date:From;
	b=iYxLYy5aMej95dNzFSYjpM745X7j9/bux/Bs4cpF86cNHsMPg9djH9XHTTo+5Qo8y
	 jseAe0LI3KffVCMrzAmrVaM7EKpW/5gjpzSB0y8q+Phjfea8hnVVuELDVtSn/+HLn5
	 OcG9x2z3tJ2Qc24opIFijeZGaPW+sOvJkW0IpPPpK96Sy2B42M2Fott84NzFCp5Swd
	 06DejMIPBXcwjgj82u5w0AefiLGPcxtnUX/ARk4Zwh/AiUex5yUUUuN5eVo4bnbiKM
	 YZwTOXulN9zJZzX0vZAoE1qCHcDyICz0TJLFmZJSV1TsUqL6DSVmf52I8WAkzinibv
	 yaq/bDoig9RmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C64CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295239358.28519.13530990891663872730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fba29cdd5f3198fc0de1d56fb83880de68666a67a5fdd2cad3af47109cbda3
Date: Wed, 12 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762952393
