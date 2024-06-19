Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E70A15E9B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718838563; cv=none; b=sS+J3S6Z655eITxmq+GKX1Ivji6Za2kTqwAmJFk5oWbVRc4Wv0/NRTv5o3I3iSVFVs7sQeOZPn+L+bWSaf5v4tnljLE0YCgXpEmNhT5d6M0KOmkl+LZnfC1Cvun/mOWUIZTp8itwNZ6sCbnBpmi3EwOjM7o0qC9Z8nLdGhjwSfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718838563; c=relaxed/simple;
	bh=FbX5SUp4DDN/FxTmUzTuhfLDeFMaVO8KELgNTgJTrTc=;
	h=To:Subject:From:Message-Id:Date; b=LFZ5RmI3eu+wN8aIkEGl43C6HSjqSVAQ1qjqhr8Fs0lSGcvsVPyPm+gNXFeZ3SwmIs+dh0idE3zm5i54xYNuL3DjYAoBDvJB/FTiFgzwm4vOOrgWdwQ2as4jzP5Bgo9ZeuJNoM00FLv8OJLK2MkOa6HCSqAASU2q7/Lfni8dZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxww++DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxww++DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4CFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718838562;
	bh=FbX5SUp4DDN/FxTmUzTuhfLDeFMaVO8KELgNTgJTrTc=;
	h=To:Subject:From:Date:From;
	b=Sxww++DTpBWflJvOVrkTKjKvD+K58+/3afOdW3wnhQz6iXiZVPBs35/nJxdnVjeTd
	 XrKNAU19TsxetJ0jn/ceAdpLEB8o7TCZwhnT/IyQq/HPk8A/4qnvcb+7C3aEkrgy+3
	 S9wnCl2S8tTbaGyc3eNUUk5X20nd8LZsIyzJaOg4L0isTNyD0CNIt5kS4anesDXqsE
	 BHkDzd3/KhR4eG0370EK3N6IvFzrmUUnOHgkZ6UaeIdvdz1j/YxWCcan/1gVcbICKZ
	 +2lscpLOWEaLPHZkiuO4a9PzirjtTU7KYvgfarWlVkqY4yPQlHwJfSf5z6Ne0Gqdwo
	 CeYbv75pVHphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C599DC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883856278.17275.7970116097226492900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e810fabe08c4b9d76046db98ec015253b366f50343e4c2ce797c8960f140bb2
Date: Wed, 19 Jun 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718838562
