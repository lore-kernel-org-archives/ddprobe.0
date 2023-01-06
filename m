Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB54B7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A9EC433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672986687;
	bh=CfQa9jXhFSqEt9bPJl6SvzstGnvsQNy7lwDaDy3B3ns=;
	h=To:Subject:From:Date:From;
	b=DX7xpfL6itUr1uEEK0KXlH5DfA3fcNtT4CM77xXJXUMDZGYOUg8hijRsNG2MCp77K
	 7HCFPPltM9PpqKuX6X+5Uc9vvvhKbVWVsTXsPY6J7Ak9i9aYWEpJpzete8D/jUrSv/
	 uqRkk5mUrZ8zsVi4WzTLEgRU5rJLknzapA/xkRi6ln9WY+Ddot5u/31q1SZdWNTO5d
	 m9Hv20e0DbG0uY4u2JNNF6172gZCMrw7C98ptowBBT2Mmvzd8PP2p1+FhLxpULwD1q
	 XwT1Wh4nYZjvXFPeCLGG6zJvI8tCI7FPEk2YKhX0UaHDqRm2+9XrUA/4jTBApOGq0X
	 qpZ3y6MRACklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DD1C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298668738.27196.15417917738335295947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2197a3b69649aeb92d47c77b5ce9c788305c0379b8555d15e21929e5051f9b54
Date: Fri, 06 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672986687
