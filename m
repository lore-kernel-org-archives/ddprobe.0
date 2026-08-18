Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5389D31AA87
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787072434; cv=none; b=qxTIx+Iiw72mBNDnXAMAIvIZitkrzrvlLwGETb0vBMnAhi6hPPQe8sj8vVlWagPT2wayvRS1iZYLR4u5iIiLPkstrfDhddXzYN8/bJBW20oP8dFLlv2mSsDRLPwKKuh9nJDvEYNsUpPQhpaDypLQ3XgZ4pZEwGuJFIdkEhOWRNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787072434; c=relaxed/simple;
	bh=Yb+rO1LbQKaemal26Bji1ZdrxV5d8UGJn/jkDVlIz3k=;
	h=To:Subject:From:Message-Id:Date; b=FaYJ/2p9eZ/tF1VZjhkbSEVYXLxTgM7IT5gbNSCSR3V6+6zYGvGn9OQyvxu+/XZ9S1PQUtQt2XdUQSMtiOe3Mh4IKc8V1Q76HS7fUQC6eXYqzFyScv5Gkxy9OVC6ZR8kNBrC5MDggEOe4DKZniDiJd6i30nHLIJrJWKFzNHDQdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glvZzrlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glvZzrlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00BFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787072433;
	bh=Yb+rO1LbQKaemal26Bji1ZdrxV5d8UGJn/jkDVlIz3k=;
	h=To:Subject:From:Date:From;
	b=glvZzrlbR/W23olppBs/7CzxFG2hZ9Gum8TKduRK+whL4Ud1UEM6kS3gCscrNkiZJ
	 DOxIBL4hjnJz0KLZFqdEUIlm/Dxi4RAL+jd9iWMBrG5x80YLEPxrGlFnoaC23MDiYV
	 qFl3NU6nmR0PAzzfCNlXwm0fC4O1xwlHC9FPRhL3cRt3yYpLd3My36Ky3H1C2ChUaw
	 DQnPJvJObXhUDpWDLrJKFQguId7TikQrvbaGO7TqO5Hr+JUwYg2AR0H303jbqv5eRo
	 SRVHzK7eQ/aEXve1R6NeVqHa7ms8BDeW0mON9FLBAo9n8ivA9ZQT6TUF0Ojuz1793W
	 vs9s0sFYEE30w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA02C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707243369.8732.1813739583624355517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291c6cf6514478e93864f738d6c49319770cef7789f6d26b97caca13381583b6
Date: Tue, 18 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787072433
