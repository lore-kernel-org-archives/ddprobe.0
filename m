Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088BDA9A
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1145C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678476305;
	bh=ScutDPo6+Zag9jUeBoG4s8rQFwHM1VTF/mwMCM3dmEo=;
	h=To:Subject:From:Date:From;
	b=JSK6LI/SdnWkVxlNNNs2hn1nDm4MVH9eOt7gLiZM12y5EgOMMsGBMKgU3Z7K6yMfx
	 VdKrLCRhsXSaAWu+149MXIgndRqQKh8Bug2s2VsRNyF3oYH5RYZWMecX5+Wk670Uxz
	 BKC9mMjqC7MxARotC85DCDiCixJhYP0pBSLzMc0u68bbG0KSxw08tOChJ3Rkgf/+ej
	 TjmgOBqt/54q07EWTLzEO5j1tB0Z3DtmdG7VAyCFQZDM9yw8jwU3XIaG8VKFqZFe68
	 y7gh6KKxVajX6vVlG3ihtydYnDPAwz2vdO6nn6HiDgOovYc9wI1Ach4jWsORZou00H
	 yyTm/ILRSHmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C201DC6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847630577.16357.15961469643090809965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8245c3f3c3c6fcfab22faef5d9bd7994a1cff09cf31e3c60fb9d911fd578f7
Date: Fri, 10 Mar 2023 19:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678476305
