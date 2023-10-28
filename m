Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B5B39F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6SHcp9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86143C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698454696;
	bh=3LDmU4CJTAlFhHhHOj0sYVxG2qZQ5S+aYQXRAd0YTew=;
	h=To:Subject:From:Date:From;
	b=I6SHcp9io15eIHjWnNCkDtdEn2o2J/LJhSvAvojOiGlxA8/+iiw5ftF9nR6RdYNM9
	 ES6DdoBcZLNqKn04PZStvJHbn/LGUqJLbkp+2KtNKbaMKSQ18+A4d2RZTp0YMaLbpI
	 BzVJGTguE4hN37K9Vox/SMPDLNmvfEvxT4aN5SE2YrObz69FRFJVwh9hOKoBouSrov
	 ppdfWyk5HOmB6Wzd2R6oF2nU07u5fFtoZeHWdZHrIMk9NPbXu5p8+Yz4WBtvAdWvwI
	 wXElJNdu0CsRnBH+GRdUuv2q7ZoHLU8bDxdttYu4o2dDZy4mW3GMlUfO3AJW0X1X1W
	 H7UylEVFU3TKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A2AC27C47
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169845469639.25389.17219572523764679284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8125ea722d17eaaf1907e2a844fe9ac942bad199be6b4605badb6b14412772e
Date: Sat, 28 Oct 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698454696
