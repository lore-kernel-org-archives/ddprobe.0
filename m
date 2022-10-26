Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F9EAD24
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F269C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666810853;
	bh=VCn2dx6CAsrc87USk2D6gvjgoluyXoJc1yfqgy2LXBQ=;
	h=To:Subject:From:Date:From;
	b=S95IN6FGdGNCc3HgqYyWIFcMNvrcpwWKEa0O1+aibr7WfedeBrYHSTLbUc75Z+jb+
	 5TvZdy5KnBfFmrXCZFccStrULjGTaQv9/LaHavSO48vYh64+7LfdHi5fveGPhrp77r
	 oEuuY3IhHXKXT7j0vRAi9J+0oLnXwHe3p/mgb60/891dcaRWyWCqKbyeWNTnYLI53i
	 c5dNEyuYeX2mcflqpS5L60saNnYNR7CbNAG+deVjbmk2U8pb/m5996gnuNybnUhfqr
	 ykVjam1eWI6Nx7s+1RaTIrLl+O3BIjzddu1XyzgyJ85GC5QIKXPcFPAKkuOAr4H2qi
	 +j5uHn8NBz1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5279EC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681085333.12301.16553756781100639812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc668d05844a57a018420f7f21e2bd733e09dc7e04ce4bfccbb6c670c877384
Date: Wed, 26 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666810853
