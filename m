Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4C659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD5EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673596287;
	bh=ho25A6552YNSjyImXbk63jajzwsUHqsCzZez9XvZWh4=;
	h=To:Subject:From:Date:From;
	b=txxVEnmoG9sFAcKdC54fpV5HPJdki0kiKB7hjcSr3muCBXJaxALYatnMBleO1Er1+
	 1A2MCLe92mHM4tteLQ+JGlcE8ybA+pRMd8xMyVqBP5NPVImLH+5JosF8dNmKdoiikN
	 /i2km5QzDE8fNGhSGeRhORjOWPGDcXcSsPzYb7Jf76fZGgrFhxi+De4WwYULK7oQkY
	 VvQLXtln+donPwpeVyX4uE2sR25XpeepBskQKF7sH2SlQY0T6viufTvOih9t3m98sf
	 9p8hMZVRQcNrNgq3Lb5HKBoJW5yQbfUU9lv2P7k7v6DtfUNEpSmp+t/ZNeY3Dcq1lg
	 zBw8A4x2Q98rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8FAC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359628744.24834.4868895170378257070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff26aa4e2fe8ed377c2eb8a1eb316a0f162a8e9ddf0e6f05a4ae0a97aaf91f1
Date: Fri, 13 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673596287
