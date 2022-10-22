Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A6C20F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86668C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666413653;
	bh=xfmG0P4VtnBEwiAcfkOEAJ6VqSMfC24pxYy9i+6z7JM=;
	h=To:Subject:From:Date:From;
	b=Dlk8wm1wzsRsmRUaDQQ7WKpl8JzlKWAkmMACdzQYVsvDVl1MiJ3Ktz0og63Q8rdvi
	 jlrq1ai+TM/AbMLFhSZjbuOsE+LgXeqvcG/IK3HwhiaEM4LQ9mDozsEUz3oisVjKK8
	 iN/VOzewHSEt1q2ChjnAHtoQ4EdSv4AAC/uelZnWSPYnWTyeyIKDUFPWHIm0vtIuKy
	 yZ2XC4zBWZvT/3d6UhUvLOLJVUrfs19SDZdDU4ry/8F1Imhl7pjhTtcJMXWD94Fmep
	 OgFV3cH8yJA5293fi52UJ4eTwpNVzS8N5x+NWVoxoSDINg97mkJ7HvXh2eW2f1tKn2
	 7xQbmc2bcEYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C08C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641365333.14163.16703781907899353356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcb9350b9b85e860f23d02d80d6f9494f1da9bdfcb01e1d523766f9b680850c
Date: Sat, 22 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666413653
