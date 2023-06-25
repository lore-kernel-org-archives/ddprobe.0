Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C1762A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB78AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687662788;
	bh=q35lpjxGXfWJ9wk7IUmfT8ezLrcJJluz4vHkxr97bG8=;
	h=To:Subject:From:Date:From;
	b=cIRo5CIdniZZtIJEWfZ/eQYQ6i25C8MZAUxhS0E9i/HilOcX9V1KcW/hT6+ueinZO
	 LfojCdEA0pkw2CpqLJPOZNro+awOey3WfpFKZ0T26IOfQXhVaGKtFPBPbZoUKHdX6l
	 wpLC3AeYCTgFTsbI3Di2DfQIhnaPeX7BwVL5rbWgzMRr/Uan40ElE5DDS0SQhaUDcj
	 fRndOUXLFKfp2joyd0hEUJPd4XSwCKG454TjGghljvUuOGMsvy6xPjuDVNQJOagzz2
	 wcew0xIYmwPNjRbHjYNWmGwuJC4gn634DHq8dkkaUTS5UM0HGcPNKZ1RC6aTziFOZM
	 9PCwC8VAYLBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE6EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766278868.21362.4811875070167809932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ab8b818307ae85823e57555268238a41304de382cc4c73a696ae5ebadbd332
Date: Sun, 25 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687662788
