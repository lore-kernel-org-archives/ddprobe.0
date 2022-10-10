Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7B21FD1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68BA4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665412253;
	bh=nof9L+BrJnI7KbBVCQQ8mjsNB3i9Tch4QokWETlgNMA=;
	h=To:Subject:From:Date:From;
	b=qdco62Ft4sg9Lokld2W/rt5wf8tdVw0UNlNR8P/l7AnQ6FOom4k7prcvkLtG6vpYi
	 fNVUqERvS9zRqLZUoG4ozPeEmGkCc99JrXIHggEYxYsixRPSGb95mhIaEjCA31n/mn
	 cp2jIkolPyKk5cRgfmpvF0UgyqhVZswaikLJgKqEo2GgIRKuivijn7vbPWojUKPH7N
	 HeFxOmBbT4BXPebsV9nZbTd8vvc6d395Y9veWTkljihePISwcy5jHtSTagdTQLS5Ib
	 8Y4UUOiK/aGezssyYgjf/jwMYzBatpAWrG+4rQv0HWwzfhOCxFgkQCwgx49w4lirN9
	 tl3kRdoiYMEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E214C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541225331.4347.16619093142654721352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f297ef4fec064de1f95b17bd27f7c4c83c2f1e64662234ffc44d6b017708bec6
Date: Mon, 10 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665412253
