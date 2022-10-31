Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4357E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7286FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667230854;
	bh=2cvQ15vVMX68A5JmgLL3VQ+aJgMmmLw/8qilXN2cn5k=;
	h=To:Subject:From:Date:From;
	b=qE2KRtn+jkh299WJNOGjH3YD8k2Nye0NnGjr1Q6txh3AWdiSW1dVcia47fLCMLVYz
	 cnVvyGlHZII4tOtdUB3yUb1/JHpsHL+EwFwcvJcLUdToWellXoNbnUeAmO7F8/dlP0
	 QmgYUMn9FJjUTpnE/xLNl2VL+xDdVpXqf7ty1NHF5lXh580erOUqjMqhfQYQU7YqFi
	 w0JPcxcGJw3CRE4QOk6KqLMzq3XjbkvChtmIrxV/faz4Yvg4jnCuMadb4JQKTW7/YM
	 dUfjxDo+kC2l25+2mCfhFWFouLfFFkJS/NcKHT0lBswrfX2jPLTldlpos6QiRvIZHu
	 7rSKiEWyCRMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB5EECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723085437.4230.2408818669531141012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4dba101830d88cc4d78dc9e43a640a9192010e0ba4fd71fdf1c1b4c47a7ce2
Date: Mon, 31 Oct 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667230854
