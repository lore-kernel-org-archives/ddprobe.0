Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56310EA
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72C9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684115345;
	bh=tz+Bc3LZ8CRsofUc0oNU19/7SLc+STRUOn0jSeynT9U=;
	h=To:Subject:From:Date:From;
	b=QqrBiizxfXUxt2WQBafrElo4U7eTfEXQHopp9F3kwydVDHoqQ9Ki6Gg4IqVXtSOzX
	 cupnB4uShc1hpuOxFiEvjiunRX5CTPca3EprUeZZnof37VjCTSJF1wO5tCXIQOMH1W
	 6hnPlczw7o1p5vftmDvKN/7az5kAfhAbvyAL8m7EfqeOscV87L1VYYThofWfMMPcgn
	 O2fggY1tUCIi03PjBoB/DO3Y0FsN0Uhuhzyld/cqE5HRp51ojduHRIqebIQl4h2pzo
	 lITfBgieUJjTKJNjaFsSMGShn1kQkiF8+ByjxRZW9QOKYDxRXU7yCKuvY9K5eviP7l
	 RsZ2DznZEfL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA06C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411534576.19352.9742131283089926610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94dd304544ba72d3ffe495d4978ec4d5c9e5abee5ad656ca705726e967ffe8b
Date: Mon, 15 May 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684115345
