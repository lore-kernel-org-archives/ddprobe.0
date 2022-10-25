Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83727E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 667F8C4314C
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666662053;
	bh=QOyhj2/tMz0giHoKGpOtVduyzTKDyhLq2/2ARbVUQtM=;
	h=To:Subject:From:Date:From;
	b=NyiNAptMaNt/VQx/snaH/qIPbUTwO94Cvz0dpNAwQU3dm58oxv+ZRirrCj3X9Nijo
	 NzTeDRdah4Hy1pE0vGft2o6OHLkuTDtatY/Z6W67na1M6+suCzS9sRQA7CgRvs0sJw
	 5petRRVfZe7ieu7GLj4q7hM4vygnVRFcPFIbm4rjDQ4e7PHHxoQKF6iV8WZzrH3oCH
	 GRqw9COHcgwhq4QuW3DiBKtViUMZ1Tb1pqWqr60v8RbAGgyOFjUPwhSVy98imMkrS6
	 lkiwYdeln7VG58O3qclUtrL714SFM2x0Piuq0bcu67PI4RAnL7rvMW9Zh3OAKcTigN
	 slbbKQAPhXyIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CBBC67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666205332.29359.16283498189359270874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d280484d5bf31f7790a3a3a76d8923e9f54deb4fff5a1950c92576cb22544bf
Date: Tue, 25 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666662053
