Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D7AB67F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOGiKikx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0CDC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704787096;
	bh=KnPHOZl9KrqoWAb78EkYFiTaiXjOm+wmlb7pCA5DMWk=;
	h=To:Subject:From:Date:From;
	b=UOGiKikx2uCRjZhtS5zHrSNAwUjxZ9qNNNoRS5ZF7pnmAt8o7XwfYWaHpM5NuDeZ0
	 +ivC3L4Fb4Toc4IeCHpXEYb5rSlIbZmjU4Yc/xHjqdLMK6JRyQfqJt7xdYc3VJ8TPw
	 7l6fNEyXgLhn1fbWdAVP4tlRgr3kH8l1MWrjqn55JcI1QJQxC0ayqzC6/ClRZs8fr9
	 ujIbsS2iP1wJlu3dfzMESLF0aBHjy040Hl1uLPATxqDi7rhqnZSKY3XrGyGKpFtYPp
	 SJ7NvJuPDb/ueoh0OzINZbeSQsoU00vkfW7WwQpR76G/+Ntcil+3Gx8AhYGhENZ0iC
	 xFqP58DYoi6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F272C47073
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170478709644.12320.6801828666100345217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05789428c509fe811dc8b37ddbf88c37de7f0e07084550712f968d12c50a0bf
Date: Tue, 09 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704787096
