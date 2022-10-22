Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3C57C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6972AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666420253;
	bh=joFYTXJO4odrfWbKthF7D+LL/hI/CqzBB2OOlDLWagk=;
	h=To:Subject:From:Date:From;
	b=nSdE3RY7NRqwtHTmz4xGI3JoUVzT070cQvvobq/06MsLqINYHdJP3IkXnbWDkQvqv
	 QqXmSkr1de58cC+QwL8g/XCPRmBwjHfyAd0smgjZgG7gDO2o/WIl2njCBrIr55tYH8
	 UdrNNcWHxFGmjfX5+RYAHSfSJuKP3KRldeDrMqTCSACqLVYaROhp1H69O4/kGJWKyz
	 B0dW9sVGKB2hugxkmCoh5SKYShfCF+sPiowAiwy6lZvHO2WT37RDoyTEQfhtcMQp5j
	 ho8SoRav991SEOzpN6cXb5lI+gokO7rTOAQGknLcqfHGqK/bIIa9hmlh4/HHtAePHW
	 JNEuBQ/73W7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500A9C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642025332.1981.7792416365356339955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712811c35aecaa27f129e0cfc8e7f45c9cefd84619898b7b32084e2ebbd2fee5
Date: Sat, 22 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666420253
