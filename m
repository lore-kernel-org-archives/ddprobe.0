Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7362BA29
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvEp4iIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D11C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697160428;
	bh=3ClybSVNt2uwTjk9GL/rLu64xjS0ccJrt33NUqCJhWE=;
	h=To:Subject:From:Date:From;
	b=VvEp4iIV/kA4N3XQXBCTIJEcdF8dKpuRuSIc7g2ycycleq/JXupQ2RWO2+akblfTy
	 5/nOrjM3zQVqFTyXGpbjFAUGjqWDRx0p8sHcmPCpYWVVINKDhLBTFuLkxUl+h5Xhk2
	 BJzN11xFMQEodiUsRLv8UTtRJCma4lHBtuFyufFh8qhqG7YnT+bn9vINR0tmo/q+uF
	 6sESp7ViM2eVam+8J55y4DMCPT7P+crYUzA7TQSCmewWkg8Dy/oIGo0UsUAFFe1Lbq
	 4baebFgT7Rcd/NibgtYF1X3RN5c8WB5eClAloLCWxJRJFIBMP9WeR8GFnsPuGXUk0Z
	 fmJiTSHI+FRhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9796CDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169716042874.26213.10109508925206828540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82208b9f03e9ac4f53da785d117c33adc9ed6d4379981c6c34c5add666da95da
Date: Fri, 13 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697160428
