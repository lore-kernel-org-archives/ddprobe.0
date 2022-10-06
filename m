Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCCB33F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84131C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665089453;
	bh=FvypD0L4H67bkADcxe8WQcaRlnUMa9b8cOyvzpsmqh4=;
	h=To:Subject:From:Date:From;
	b=nn1mF+jQhUxB3fJqf9NapfjeW8D8dW1isUvBs6RFqRg3IQQ4N9bUw0JfJQAKUSNXz
	 w+nLkx3w/UiQbVCntPiubiD2pudSVh9mB5ODHwwXh8r4XA6HQIC7lBQS7F+5W7hdqb
	 W3Rsfi1j+3DlBo9CPovtEfzVui4SYI/nCSEuD8r9EYLSXQI74Q4wDns+Lu39Lyd+e1
	 9cmZc+PRuwnCOxiu1jWQkyupdXXhhZmN03Iz815NmKGCCCbQHuWyVa383V43SEY/3O
	 NgCWrh/0TS3A5lYQkV0bVkNTH/sLFRvCcATPUmy2o0DyJ63HNQ8dYADuKuvH0b2nwK
	 XI4F8XM0noOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1D9C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508945338.30754.5547419976566781594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec782add5a02801c755fbc3c5e612eea5bc3df293b89f196f03ea1527914f69
Date: Thu, 06 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665089453
