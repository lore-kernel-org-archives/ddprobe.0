Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2E1E5205
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745995794; cv=none; b=NnR2y+9WJcjccyk8PzG0JkNlPip7I5aEsDzwgftvDhRRld4g85n6h2j3KhW7YpVsSssPweJ7y5MC2tCuZ1H2Jb+pdl1LZXs025Us6u2o5HzsWjegdmVXFLDG7UWiA0fmmQJqw5yxqpFdXZ9qO2Vlf2togfAwVbOZmC33hqE+HrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745995794; c=relaxed/simple;
	bh=W2AQGkPlZzgWWftGNTcl3sRaQ4+R/+uDA7FbD3BFV9s=;
	h=To:Subject:From:Message-Id:Date; b=j+/b/fPwcZxj4aqONMgX+YvAbNT6AhMCBycOJMMUPyXt7pErRnj5fUdNE30K72u/cyn1QDJbJMpGOekzf+UFr54+j8XhhPYs0yg6U6iVVGT+jqIRI+Is1JQoPCS6DVVUGImfsnhleE3KUhOB82ZdvbuYGUlskyc+V7O9Lk5jX2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3kkxMqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3kkxMqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF3C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745995793;
	bh=W2AQGkPlZzgWWftGNTcl3sRaQ4+R/+uDA7FbD3BFV9s=;
	h=To:Subject:From:Date:From;
	b=d3kkxMqoBqiAhPt9QGyVaEf+A+TmCkUcFMziJ1XuI1IL6+lenW0496LHfsoKt+TuO
	 9SR2sQOz/1/6B3DREP8R7pj7VmOCTGyEvYn4UkCHzBPRgyoplFueCJfty5M8sxKaRp
	 rwRHBPqMy9NofnKrAOg++6oE2hUrD2T0YS11j2qpLCPpRxSIUcbR1Rkjl/natYocFh
	 AzpA10tPrg+q7JO4EUf/CHf/J5HzeuKyDgaHqXQDV4skYRZTOEfedR1kh6lo1UabKm
	 dLhe/3oqeM1niomb9LC/HsWUW+YfuFz40u3IOBYjXjVHZu4XMTXzB9drF/4mTHK5MH
	 7fw1VjDl/HGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4DCC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599579357.17390.5204770312963951815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72d59f9eeadb5baceaf84ee6ede11328aa510164f86017ad508662667043d7a
Date: Wed, 30 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745995793
