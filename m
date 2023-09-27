Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC8CF519
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ED8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695852968;
	bh=ZHLLWBZzTMqotbD3qSQvxq9KbP0yzVQnDV6n4l1lBjE=;
	h=To:Subject:From:Date:From;
	b=UpPkoui2GAWpb5nEH1yJNzPxO7+hV5LhGRo69LXJdAChOe+eqLKUGoX20OwSKqAXK
	 BI0X4hP4JIF1necfV70AfgYZVaAsFo6mMCeqWD1TZMGyhJ2DRkmF6CulcqzHDRES8N
	 EHk2FN33ZvozBj3srkLmoEwqsNV+spvJkUyPm4LSC41W7QZm14rggEK11r8AVy/6DY
	 cJTu+mlk4TEEiJVFWve9GWOe6cyEDqnO+ObBc3Aih/4aenoHZCcwTNY9HpOULAwuwF
	 ziwo9M2EcgWCmTS1W5A0DG0DJK6l+4dnmmUk1lEcHGM4dwEN6B0F03fVfZ+Fc6x4U/
	 2cF+GjBPAenpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F04E7109E
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169585296874.15512.4953412488887256406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce2c16c6439ded120a9fe4b649bd7a076679837087dc76ddc46bd7f64571830
Date: Wed, 27 Sep 2023 22:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695852968
