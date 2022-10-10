Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4137E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9BCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665399653;
	bh=Gqefij9jds3VbUDYcuLSnnArhGSqZ1KUtdlkw3MuvP4=;
	h=To:Subject:From:Date:From;
	b=YjHMtnHf5UZt8+oW7PcO1FfrHhdoI37NgHOMYiy4zLPHmCa32NwjAtCOHymYHe/iS
	 7vee+78e5ZlyWAsVWgrGtij6s4HXUQCjjIf9aswQcQ0kN+iBjaiaSfSlWmJ3MTcvGg
	 6F5IHjJJFFWqmGj+b/3p/JRs9YOtJyupyxghLD9q51dFYjGpuZg+/aWrrG12mDXnlS
	 y8iGgqdfFFoK/upnjAFOchHWojh5vx/dfe3U0dFhnQFpGrJO7ucQwymvGCVxKSR7ic
	 ejU1awg5ux5FBXu/Yjr///L1oKBwiPQGPoZv+MGlbL5PMH/PELFfOB9bIxsjftCnXO
	 wZzaNcQLsm/mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513D4C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539965332.30943.4052036296424075539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd9acdffc002fde66bbd5a86d5025fc7f3eedfe302af2f89676e6c0987be3dc
Date: Mon, 10 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665399653
