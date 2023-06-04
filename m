Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3B815C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA547C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685864945;
	bh=1UYYdpfOjbFPBU9bzndpQyNBOsR/Tk8NemArsrD1D0Q=;
	h=To:Subject:From:Date:From;
	b=emw4BDP1uASHS9PsWS0J7UE1HT72CSY67lLYQxIKSj1yjjcmA9hligFFC9R4ULzOS
	 7YdL5J03cu4+5ndHnwComjmN4NXrKVIdj6yvRBsGEWuFEhqW/xI7Cgjbfos7LIj2TG
	 GxZ82SS4/IpdxtCTvG2IeZjjp4kcS027GvyI7388ByAaZeAYYY7pcqwK/Uu55YTd5P
	 F3B0neTH1R4L1alRjQheAQtcrXTsVadqXT2ahUBtX/4+vwIIyXNPz8u6D5T3sHFKvg
	 70g0tDTiUdFdGUXTfX7usX5C137DcANfUBuBiHMhBKD+1I/qABrNEKJJXJ2LLmK33C
	 HlOZtfWOU5DYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4683C7EE23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168586494577.3342.14992097922687330285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbb181135620031e14b6e625449f6e3e0655b440aac841bf141c9d20c071c73
Date: Sun, 04 Jun 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685864945
