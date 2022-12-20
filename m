Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA96EA1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B8EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671496887;
	bh=Ou0/Hzqi+O3roLMs0g4RClVvrXsDPuWWZ+Y1SNfrVJY=;
	h=To:Subject:From:Date:From;
	b=fgRehrs+Wb8qZo60nRTI+cQasjKNn5wcN3X6EVnYef0zX46j+OLSdpBjmiKhZrAyV
	 TQN6YZcK60G1tEgSs8r/Asqh35onDW+P7QjxJKdkZ+WeYlovoRmpCbAFnyTuMw2SC2
	 zqvd6tr8x6JqVXcrUGgFPMUE3qzB3HYw+AK4q7HlBb6iSNyByl8qQSXjBNTSrkb7UB
	 AS2epOm08U08ThkY0kQpkJZNV+ntgcSSDDBai0ZjFCaXcsGQ6E7R7OA7wnirWY5ss1
	 M7rQLWgUsIL2JXbbNuUBFUPZQi+PjeX/iKcJ0Ue1qPICRdiKSUV3rwFZ68rNxzqeDE
	 XOT9QogaSqFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61186C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149688739.8375.2681846305739477011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d273447fb60a2737320431e646688d59063238c408b68ceb29dcb0ac4ecaf95
Date: Tue, 20 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671496887
