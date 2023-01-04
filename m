Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2517F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C837C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672794087;
	bh=pPnOhISZW+SW60VLMQKwp6/K0IWFJ0of6WqaXdc+TsI=;
	h=To:Subject:From:Date:From;
	b=t4DCmbt1TsWAOklV9y5CEPtcy2dHurr4udV59yAWh8xuLgQNnAfP+gl3Dr6D/TaOL
	 2iqD3skjOKhWuXKxKeBNuvQBwKdtyBwBN34jEHEuwUqG7s07ImKy55iP3+cMpNyfCJ
	 OlqpzeTx1V28T+7a8ikhNhVuPAjQPwfIjTnxOCMHdA80uR4+kqnKpFG3I1XfscVR3D
	 Yhl/EtSUa2RQD4KyRelcq0WANftpdksxeqVc9y8acEgrJygepCJLkfAR5+N/ZdT7Ql
	 9WMTugGB6VG1KTT9pk/tHblEaQJyajvVtd3lhRZnvQzAz8JSl46AEldGxX2SP5Bea9
	 LxEi7ouIqQn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C185C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279408743.19027.1617099038363186378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b537741d6bc79be3cdc5161093ae59bedfbe5dcad1262fb0f00bf69d16ae5b5c
Date: Wed, 04 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672794087
