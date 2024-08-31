Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1DE3D8E
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725070554; cv=none; b=qa3mfy1dU7TygbglfxNIgtsq1HmOJPkUZU1YyShmb6ugWtSrEiVu/jA7Kl0GJ4yW1pg8UGacLdYHqhfTkAk3Z4WZVWDIyw8kYVrUS71hsDdSJ0VTO6895OuS3TO3HEI2jnS+W0BrweIzx6dD0b1b/tw9IGghWwPfhDfVQT5d26A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725070554; c=relaxed/simple;
	bh=S36VJya+yShh5rXc7eP5D3OLlPa1BqamVM46s2HYjr8=;
	h=To:Subject:From:Message-Id:Date; b=ER1M6jm6kQCUg8wF3CIZgxarR0NfEBQY04ashqxRJvbC9oUKverTA1xLWwyaxOMdSghIvZteXMNyWkyhpkpg2hVLk2LdxSL6aC7/6M/f5RTPC0VoR5hXwjvAiMEJxoFGSdBQXOEFp0ALONq+uIF/oI50O1605URkXqX+kTLhbjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rjm1xZUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rjm1xZUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5121C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725070553;
	bh=S36VJya+yShh5rXc7eP5D3OLlPa1BqamVM46s2HYjr8=;
	h=To:Subject:From:Date:From;
	b=Rjm1xZUAadadYZUmB8kTAs0El/NjxInnwkIVrF0r6RCwKI1Y/RPL3+omWlFmC63lA
	 QgK4xsMxWrb6/+xgI3kMT2bPQHQ7/17qFEjuChaA31U+fOIPiq7tafVNlPzzrqSUb/
	 huhMw8AcJql7jJRjHaWW4hVD/Gsz+MfB1OO3LvaVDUJaEz+nF/j0DmoUnRlEKFp/7G
	 zbWPUCv8/W+LD8TfmEEnZeSLlMp21BCkWkQ7wA6J+nCJaZthjBhajaoClVOQzCBhK7
	 i8ho8HkTRgPHMUNnHI3b2JzqDxsaCFr+174lscmWCKtywX6KDv+/UU9Pz2b4hQgN23
	 R8Oaqa/OjiPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E56CD1288
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172507055358.2183.13928241688648554695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a64a178269be7de10ca725dc7927956512432366f932ff3be360a62ed7d6d66
Date: Sat, 31 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725070553
