Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E95364A2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxRS4MJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A918C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704498496;
	bh=wo5TqOWUusR1SAEIgicNF0b27lGxcX0zP1LSSAicinc=;
	h=To:Subject:From:Date:From;
	b=HxRS4MJHZ2PNth+bN2BkfOWZ5m+1kAGvLNyUk11ojYZ31nMZz2VJlZkoLDoMLZKAe
	 +HcIg8WAitW/6uF6ttE+HgGKLIHbC4OV7HrBUOU1njpSDftmAUnuor6IDuTtssQs62
	 DIbztCTWB5mQkeCydWQgTl4XuowM033qdvrgHSpfQci71NxwLI/wJeaEqk0LwZ9xnU
	 y4muHEDuGK+Zo+RhCvv2hsPsRzTFuTpZ1sb327awk+eLBP7KlzHuvPL3+kcJ7liY5g
	 AF/yW9MrBARMX113YfBeSDmF1oCjUGaice0OjQ4LuHGQV5KZtM15gTdpRtjNlh3ezq
	 TSQ2V+OsNMiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669CEC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170449849641.8948.4988225577001133238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4347037736ba3aa94519e097b67f0879a43eff4483d5f277ded1a55f5d47919f
Date: Fri, 05 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704498496
