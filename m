Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A2A1114
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7039BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665227453;
	bh=JhG7fKmWuZI2r73R+sETB6jEqee7CQZTKlL6ze7FdcU=;
	h=To:Subject:From:Date:From;
	b=TxCye2poU/lRNZGzVbqGmBvdxzy219wTdz49QYZJLDi/ASW90o/MzAgornq1AOg32
	 jMV3B7LHTshY5MmoyAfCw4JNZKuZ4ytbVUXtDD74kxk5/SFPmmxpWRRMXsMWVmCoLq
	 YB1Spbjg3fibYkOMf/Rxi3rAltz6DRKjWfNqlIt3XJ+9cr6CzovIHNrSfzvcii9Rnn
	 LJvJaDLdKJW/+46O+Vmb6hL5Qip+vh5twx3YjnIljIlD+jfisYNW3D0gVUlNpcCFOm
	 79uToaJF1BJ3eHkP4JEVQaWsXoVwyeW7YKUNVxW9l3itdQYfMXYk/vZExLhaSV+68E
	 Q+10wu1fq4GdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5196FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522745332.17215.12180055381552655182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f04033e0bdf8c862e5ad37210f0385e492ab04292ab5714919955a132d18bb
Date: Sat, 08 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665227453
