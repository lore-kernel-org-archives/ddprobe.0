Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4DA7E23
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66400C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663708253;
	bh=OZVmm/d22WqRNUxdpAbZCHqNz1nJ+o09IGLxrhRuQN0=;
	h=To:Subject:From:Date:From;
	b=oWGxY1bBz+b8A+Mqpohzecwt+wc/PFmSOfJmOOXSsj5TeaFNUIYavrbeg4tmTts31
	 nSulc0eioq7Y1onTSqvqcflbeTj2VaRb0XxWitOwQTpP2rNx8y5oJ0jkTcl7XlWfus
	 tQQPKHX5w0BZfuO6msG5pyzUfnOWvbbV/hhacvNwDBe5NPBHXFuRaKjSVLSWiAX+j8
	 1uDfLek1hT6xccOUaCbSU79kpu6luk6w1LrCWO0MQaUNOBoOmNYwWQHxKrTnjP01HK
	 eBnPfwy41fkmzS/9Nij98+3+XrnsOiFZkwBwhAQpyaNmvPX2xZl3ihQioupONn/0qt
	 VzNYH+dYZ/VNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528ECC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370825333.29801.10872749608122018764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa02e1ee61356306e81a6bd0bb0e5283a551c83f421f7364bf6c5e45df2e2338
Date: Tue, 20 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663708253
