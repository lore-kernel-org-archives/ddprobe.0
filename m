Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980AE4C74
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6219DC433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661461852;
	bh=Kcl1nqRWVccagDhpwmZ4QFoIyKdC2HpF5PtAn8KTaJU=;
	h=To:Subject:From:Date:From;
	b=Dz3L84lKwuDOgJWfmOCl1b+T0w9CCsqZKiz1gXssCgd3iCfCYaqfVIZYcMXRtMhl/
	 6Ez7V3ACbteCL5o4wC/x6gp0+4Fy6FPOM1ZklAP/0WTErDO7HnNdCEn7w5NhflPZEo
	 vQSc4aVt9FSDVxryzUkyvjpIqMBN0q02TWP7lYv1BoTCz6GV2IK8BBJKjh3dsER920
	 GBWtR0u17I5tlbjVtakm0ddhgOhxJgX3aNiM2oDLyeaejZUtJOM/gSwlkW8VmZkOKh
	 EnYpZP/C9Ina4jEnZodz6aJKmhe2oNHC4U9hzkbnQTD1zWaEP1xb9TfZkcQnZwV8uD
	 Vh6uNDvi7BFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51354ECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146185232.14049.12220757548256634748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db061bef4eecb8d0ce6f2dcf3d288fdbc56ecb73f3a655f9215374307a6059fa
Date: Thu, 25 Aug 2022 21:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661461852
