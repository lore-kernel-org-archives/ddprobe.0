Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EA67481
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68200C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667487054;
	bh=BoN2Rq/KA9cvWmAgJ8/WzIb2hqXyEXzlq1gtJEZoEiA=;
	h=To:Subject:From:Date:From;
	b=pQ5+4CXUaNQGjH4wF43mwdxFC4KgZhdb4FVALcsSrhTRh1YGw1HkkCC8amL35eCBF
	 eQjMhZ1x6uxK1aQwKlRxiPFRuR4xPa1chyw15fkHiJuk6WX6HaLhtOUXHvIUtOUkEb
	 zacpnra/LE1xEk9P8zVYi6ydP28EuyfLEBu1k4rPxVk16CvTptysXk7rieZ4qIMeFN
	 0uUp14mMRr1gsNnWlcUEqjUSejbd06kWqGLokNwfG5TbJLhA0kQDdli/Iaa+TBGtX8
	 LMNgA47yKrSoCZ15LrDYDORNkmeQAfbVhee2EZdZMVpJGe3/i6zfcEQxSiFsak439a
	 /YADmI7L8p/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525B9C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748705433.25634.13206425806522044642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd438f2f2299028dc0232312af07881bbec8a8b9ca8a12c1bd28f92aafcf143c
Date: Thu, 03 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667487054
