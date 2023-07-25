Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5154C7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 00:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ABEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 00:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690246328;
	bh=WpN0FxRDlHzceocOHZ/XbdHBiVnALj3/CbSY4RQafSo=;
	h=To:Subject:From:Date:From;
	b=I6+2vKqdB9ZDVOLAESP73ysrKhY+akk9KezudJ+OSo/nSt3Y3PK1z9HzrKrK/Us0U
	 MVnRPclIrOZM6SylrkI5t/ylxc/ab73jvOteTdpaX7wRheZkBWjom4k6OdbhNWeqy3
	 sX7YkB7qOD4CKcyXjytzhZG71F7qLr4vSEA5rWi4ad8C3M9zcwD/cZOxS38CMrWkP/
	 5yAhi2uChKwcTqYL6bVsJ+bD94waMHq/W//xXGTMjIEtYeBeEAHb9f9u6gsWgMo2Un
	 y7w78SDIAgZfUQP1Bc/kRL5qSXprx32Qth70rw19EzEnH7hWbNLhGQoxzcADHfkOFo
	 aD3jespSdrDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD5EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 00:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169024632873.18968.8419685370351902196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba72e68e8be9533bb38a0fa85974ec079100956d8ec749e703b65e732811118
Date: Tue, 25 Jul 2023 00:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690246328
