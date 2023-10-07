Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5679015B6
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuxV/U2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24FBC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696667828;
	bh=I8NiQwXdbyzHXlIVF40roiBCUJ+LPxV0GlOLffjTUfY=;
	h=To:Subject:From:Date:From;
	b=WuxV/U2ZuhgchEwSVrGCxbKmE+fZ+P6vhfGVwU8JpO+LlSKKJHiSh/GVg3d5ajR9k
	 MiddPF0DtIqsWmeZfH1EriyaCSWGG9DjE2ECgCWT23O1LYpVkYlNIOHLmCMjqI37KR
	 AL9K2h3CdPVGytRZqXDEnxZgXYm6xJISu1nJOU6gqSCK9E4yZ0U9gnhS8NEii6uWfS
	 MIXdhq6YaQmQFuKiC2N3yeZIJe0DA61Szyw/IUQhvlI7oyGHWP4ZAtmRPs++ByUfiB
	 7fStszxW3rKqG5vRAsxfWNo3lrYREr8JJXsHFtTSeUhuabJVSRQZAlQExaHpepo1jV
	 8PNPJ58KozVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF48CE9371B
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666782870.14463.12685321688117558874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a54114510671b7b9b1494e0eb5f6faa48875ec4510be615b6b4829660561fd
Date: Sat, 07 Oct 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696667828
