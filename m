Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C986115A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CC0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661562052;
	bh=DkMPJo37vnTFdHopu1DgnP5fyOt+F80nhdnEC4zHRnI=;
	h=To:Subject:From:Date:From;
	b=jxmXnql4g3v8WizuoJ5rx7EusIUaIv3vm2NagsQQ3jAy5dpkYalQfgl5rt8RghKop
	 I2enanzX8uoZtfyOWsiv6CjTT5Xy8ocIyZBzDaD7ASH/cWpfTYHTGvO6SMOC95dWPT
	 JDFFaLfWYnvgpYAUe4/ZhvFU6lnfL24A6dHI095+BLwuQ2qryXyAkrmqomLqHnuuu4
	 oh/g+tNk60J2H2auU4bUAvJgPB+1IMXVaNa/bBksyQg2/USVVHYdXGMfHd0yNu8OcI
	 t/SWWTyaaw5sL8mvtsYF/qRu2MTUswvZqYqLalUeudn8rV6xfMf1Rnne8IvPefTM6t
	 EZx1lvtddkAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EF1ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156205234.25482.6327052833548905523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005c60908f5935248a769eea0b8c00513d19ea49bbc4194e89b27231be722b28
Date: Sat, 27 Aug 2022 01:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661562052
