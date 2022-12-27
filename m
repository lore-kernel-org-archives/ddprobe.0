Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9223630
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E080C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672137087;
	bh=wlsi3OZCt/f+tVCp69wSNuKNe5aD43RCWxQ9NjR+MCI=;
	h=To:Subject:From:Date:From;
	b=iWSUckkDkcrGusSNZnzRZn9ImuBL66xsqcWsdvuhTY2G7KkY7u827fR8pb1/QRgTU
	 GbRgKo9/WNjtyt/fkzLVBDDOLAk+968r20TkAOOXePbweweLHxL10NL6YkEk7JwUZK
	 hCVUv7Q0P8IeqHCusv93savPu6OqFTBvIWmjexwo+Uh146d40LE9IPXWdGXLsaiDvA
	 B91Xr5FbaYIMD6/VrxwTOIgi6BfVYYfvTF8guecZKrMzNTO6QmzIsthYoRA6ga04TF
	 r8tajdKM8Naf+Ln8RQPXVkPJfS/U23J6lW9zpq8vb7c27GGqzHxXDksUwKvWDD9kng
	 KiED6voqYWr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72175C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213708745.4941.12359270666305316027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d0b8bb52fdf2ecc05745b0e633bfa706ca092f9dc3c1c8fc3a7bb340eca499
Date: Tue, 27 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672137087
