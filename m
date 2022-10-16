Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC06210E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C9FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665927653;
	bh=IIWWIQ1DosaAlnor8TFIlIJY7iKhDlnQG44EvS2ZSrE=;
	h=To:Subject:From:Date:From;
	b=GzeJISyqhA/FS98PNoCmO/9d4TsSXdwNCKzSSa5UCTHrirG2xDJ/yO5usagbPiVue
	 euEuoIOxwIfg7Freg9u+znAHk6j+FWWuTeHIzEjwW531SLkISHXiNXE9R1QvJ3lzWr
	 gxCoHQ15mE/jixMLBi3UW01Remd3Ku2EAF6IyllUUhbHvHSOKjtvZr1KqpgM8IQyxF
	 SoeovdHF2xP+wwT2EeBAtaKAdMsK3bgY3ZOa1SV5gCoXAHF5HSjP1BSr3qe2CHk2hT
	 gXi3sI8gV8ZeN27VfnbH1fJZqzJ2VtJDXTHWFm3cMp6/6n9FWtH00N2STihOFcI2XY
	 eiKWOKxda+nhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B303C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592765333.30163.2678017844233439547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc966fc8bcfbaecdaf06dc6bca8fc0bd43fb8a9f1d311bb9f4d31b24f26c851
Date: Sun, 16 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665927653
