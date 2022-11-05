Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38FC1849
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EFBC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667620254;
	bh=LqoBV++2T/w5dCNdQ0kV5xMERovfSd5TLk/k945YNpc=;
	h=To:Subject:From:Date:From;
	b=Ux7DYap3tPrKBRI0Ei7+lpKZ89MO/sSEpK9w/awx9TfwY3Y4vlfCDUnByLhpPidkB
	 PeQvbOaq5LA9v5HXePw9MezF/JIzLMBQnmGI1xjzxdeuncurNTCGevNlAqt0Ih9ft8
	 m6niUSIZDbgP5keMfpdJVy3DssDnB1aJpIyxLAtL01kzmLfOmoSIhfK8A/2FABY1G/
	 GLEWhutX11fsecQwJE5z0/u+s55jGXA/VkWsskvnCuBVCcoeV9vP8Op9fMnwAmry/o
	 eYN1n+3lwSjdiYsMLdUkIhDqb1Lbk3zMwRbdP2/qomxuBtHxcHbueAQ9mwYjOKLYlL
	 VcX5J0FfHAy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5670BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762025432.23445.7353006772016612560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b15b00e00bb99d62142af39c6a75e0128abe16fb9fc942be64638ee97b0d866
Date: Sat, 05 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667620254
