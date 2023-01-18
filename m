Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10903C2D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E26C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674063687;
	bh=zuTcnbW0nNjPpYP0N0+qRClNQptxgtH4MEPhbZRm8H0=;
	h=To:Subject:From:Date:From;
	b=FTr9/D7BIqPk4aHLGbstdQLcT6RVxDilJK+d/+mngh3iM4BNqA9nMd7eHQMeIWp8Q
	 4vPPCGT6CrU8MIUBfrJ0p/RfzykjjMyjq+MSUM78df8YGh//KTMC2KLm5vOXhz5jBN
	 9d47IP2Tt/YZwgcSJzQSkQrso/V/l1G0Xf0C/LbFeU+Z0f8yY/9slwhfdQ0tmRw5oN
	 /A4kvetCpBTjYn3JNcs8StHv5aaKqKtWjAlbMijvU+fejtPHt0D34AfDBTtsDAZrAl
	 M9WjXZ/fStd6xxd5E7M+4sa1epYwClQknDPsjDBC5aUk4q8fOIBrc/qqmKQ3e2Eraq
	 JByy7TWj5FmjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F11AC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406368744.2323.9397017573731279409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287e194b0326c515052c389d1001138bc365816d3dcdffa6ef57c5fc688e3b6e
Date: Wed, 18 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674063687
