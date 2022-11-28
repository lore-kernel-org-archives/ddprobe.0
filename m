Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E5C63A
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E3DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669619454;
	bh=a4RxHbAHYDnbC3LPt7di8bcdTdwcRvIU8DFADEy0kd0=;
	h=To:Subject:From:Date:From;
	b=ooZl0G/1qL/uixwq0ww4rdMaaAzwHy/NN7xwMGqBMGVf995dzz7/ZXZ/CFdpPMxuW
	 +O5VLHvu8dUw8U11hMDA3HfAjPy5QD8XAKnsSnJFhTkNoO2WzoTvKb9zSlH4gyRHT+
	 6FkVteQNeotfVRh7o81UXH7FNnREAxNahNRbLTXi3HSuUBKhmOOnZuCocrHvaHXTc5
	 n2NZlP+0c4hqptzF9mJumtXyEwi9G8EfcTj1Qg+ugw8e+xRoc0KFI+zasZQG+SCDM1
	 iYi2SBaBRN3wJCXYs1YdRiNoXj4v8SaCZNkV4KekeHQhSVuMqNhpjo318tRHew0big
	 jAKNziv/RQVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CF7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961945433.2798.11919730806209787290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7609438cc3d1c112d367855d7c6dbcc98a77d042e19a4ccf09820e9a4e4c6e
Date: Mon, 28 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669619454
