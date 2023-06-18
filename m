Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F26864A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 00:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD26C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 00:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687049408;
	bh=oYQVm7Z8E6D6bOgyVi6bS8lsrYTgmDtn6JRZmtNCnEM=;
	h=To:Subject:From:Date:From;
	b=kvqNaW7O+uP0iSDyXwEVeO9V37ejpWriN3zIMSBFR0rz6tYM2iuhUWzEY7xLjb9Es
	 OQTEbddYy/lXouF84ySqbdXkcSxV9m92+R//Th6Ddi/ZDZ1Wyt5e0hZgRfJoo9QUxX
	 ZDk4o9lqtOXS9RMSEeJWcgrcmYdq57L05jwdAo0/peTFfMAcNpg4h21vo/eCJZSmLf
	 9waDcZa0JW/jgTopMJpIoAPwuQIc88jAExmme2M2v3KmoiXEW4ItZzdLITDjLLzWxS
	 9eu1+Bs9L8jvKKzkvWb0dkY924KB7LR2WfsDgywRT6xsiTnN3f5Q387t/n9km7PoWh
	 RczVfHy050hJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E69EB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 00:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704940868.543.14714879967244712701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28106a848810bd43dac4dd87340c36d479de912272b2e9998c5440b95b470b14
Date: Sun, 18 Jun 2023 00:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687049408
