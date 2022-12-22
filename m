Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB9E23AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4F2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671696687;
	bh=49f8cNXU7lHlu55VZc/uy9nH5hWfQAL0v73A+AvW2UY=;
	h=To:Subject:From:Date:From;
	b=ibFgYnNRhwheHCsfvpM1uBCcwDfmpJjzh2V+KYOLLiO75ZyjO5adGi2KF6MQn0Ewj
	 3fpxcPTAidr1ENdgVJRtRFuEnzX9bvK2TjUxM91J7uUcGha//kfcXeZxtWgD3X711o
	 jbddaeltEf7B6354sOCUY6qoEBv4hVjdDhddPypGi+7FgyhnbVN9tu6BTT14ZXS3Qw
	 ia7apyXf+uhj1VysI9oaYQqqq5TNIiT0Pn1/gIhs9q/Xmug3dMm326Y0+IkFFvCDX5
	 W/7TPhLxkstw91gxbegjNmIN3LHnGRJsqvpNHW+vCZp7+lr24LshaqJDLhZ6+WVBzg
	 Evev42xZK/kzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F34C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169668739.31454.9809869810583523372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb4c0a971bade95ebbede01099cd68557d54ba2da3e725466d6e908675bf80a
Date: Thu, 22 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671696687
