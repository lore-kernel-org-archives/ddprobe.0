Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D883A361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E012C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673485887;
	bh=Z+w67vl9MrU28qnuBWWZrNNug0qQ3V2suiKKYdxkg/M=;
	h=To:Subject:From:Date:From;
	b=C16Kjo+0nEzDiF8hsDWZ44RdQoGjMQwuI+zLhHyouu7IkkQwv6e0+NwBveMN8rCBE
	 7VoifkuLgkfSnE/zvrJXNlFTZQAhpiPu8cJGoLqErlaBxJe3hzLSYmJOGG+jSAdIAb
	 10CqvLVr+53wMlM/CMfKkcFmNySMOgrR6q6jESVPLOOC4B6eJmlQi2vq5SkxnrDBwz
	 HDqG3N86EoTKoD3Ebx5bTPuo3poFzs8vqynZ5xbuWEJVtTJziMTq5kU3Gt9m7/FJFz
	 2T5p9a6HDghdP+1amHOLvSIsZzxpZeRNGa7kRydK30CZyab5B6l5/MNKvmy0HRirAz
	 m6Czr88Xx1Ukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B08C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348588741.30846.4952383744371332223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c037ee68e2e35bcc8f54ffdef2f143f212f3abdd52350158c361933a1445986
Date: Thu, 12 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673485887
