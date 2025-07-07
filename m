Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FC028A704
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751932794; cv=none; b=LXRKYs4ILtbVz1f4bJ+MeP3AFLWRngN2nkK9r5hhrFtuVZXsWqBEHbiAnXn6TB4Ova1S3iBKFwgOpmIO69Cfyb4Um2JrT71dzEO6J+gJVPhOe0vk4xZoR6lCsAKRx9UfvH9vGAxqLyCNMC3cyC7exWYV6/Qn+8ctcHcoqnC48PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751932794; c=relaxed/simple;
	bh=U0KUzEKJ/7nC7m3wVLlqIiXCKewbZ/wEOO/wavIg9Uk=;
	h=To:Subject:From:Message-Id:Date; b=qVL8TJoLs/75BFYp0lp9yBZYlfpzpNW993Rkddb9LETvzFFHDsL0Oclzj9T3utWrOOXV0gZ57WY+ZRyVbTAOu127tplGZrOn44daMItLkPkmrzYPLI6ag+fxhAKBmoNYVe92DvwcgA16hnyTRbEFnZT3VVTidwA8tfWvpsMaRlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6C04jq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6C04jq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC9C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751932793;
	bh=U0KUzEKJ/7nC7m3wVLlqIiXCKewbZ/wEOO/wavIg9Uk=;
	h=To:Subject:From:Date:From;
	b=A6C04jq8KjhR1J0U7crWpECjJ1lOxYi/yqplU1GKlMuczqyrbyLtJOyrEw7/oNO0R
	 ybgLc0TpzQw/StgXTRyvv+Qi/+strYRb72xKQKFqNu7fiAdYrwVz3EU3CHGNFusO4q
	 oZ8Q6sd3CIaWNAY+FVUw5ajsT469fZzHyGqjI+JUR/QmY1D8v1tky/sLMFqo/CZUb0
	 jh/gDKd/W3K99yxYnEkYZRUn3TBUrbHTtucRLi+KoI3dl8KyvyGjslpVIERCuUsl+3
	 /O4m/6RKzvxj42fX//+9nuXnMLWNXv78D+VyszbEPvfKtagKhc0f1O+Q+ryaQbmd8w
	 gCvmTHr8evZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F307C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193279357.8602.6727035778111028913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0143292923ea091f8d4103a0e91e1a1c7425be928d8512084031267f80ad2
Date: Mon, 07 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751932793
