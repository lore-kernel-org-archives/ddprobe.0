Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBBCA31
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F719C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664344853;
	bh=uzr7bvmkyGsWq359c/IYb0dZj3Roq68DTioV8VeeXm0=;
	h=To:Subject:From:Date:From;
	b=MwlpGP6HiH45ABY00XbwUM6bgvnzxoKLeEUDL+w4KJB1/+DGQfVEHaq0WHQCEKYLi
	 zLyzM6gPUWjAYcDDjff6YsdyBTjDr5v2ybo5dGwsrs84VN81JsKOrFyr+3VBGLHQ0j
	 F0GEpbp+EaGGnLPDMK0vbds+Hwm5Eh6l+oJ4ycECUJ8Sjt29ITSbPWEhxdmR3/jbUS
	 YfGW8hvOg7aMTG0ppsQJypdqkBAa+cbS/lq9w8uSjGuqGXtPey5xO7UG8495UWaCnk
	 5KeKV0Ae1N/BTzyDHhHOQ4eavXRfIj+Y1Ww2nMqRzyEXaXFNbQHGnR/fUnxOD6EW8A
	 ORn51yPA72x0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC56C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434485331.19105.3572323213868398918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50436de1eb6f15becab0897392ca60413de97c97b63abae843d9c6fd2bf59ba5
Date: Wed, 28 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664344853
