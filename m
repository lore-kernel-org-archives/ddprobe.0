Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE6E258D
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03B1C4339B
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679748125;
	bh=uhuS7MsUiErNhovDTAjhhKDJDUhmG6ki7Uk+5LWdxU8=;
	h=To:Subject:From:Date:From;
	b=Uff3Q1Zal7bISygegrYMVIdf/oF3Fj+Dov74uWC2grgHpHKH5+nwPRinFf5N+Owc4
	 ztkLBFv+sefNKo1Z/ylX+5MPGtnqK2u5knvASQMr2tHhfprdTcNnX9gBagYWNN1Ls8
	 U4GPnu3JD7KY6pVjlzIyrY/i5h8EMxJM3eSnA3/s3Y1ZLY3gk2pMeqM2cnwasZX/I8
	 j8pVQswlV9HVGtKKhBCL28aY4IgVAYqP3EInQCr/ktS/CazUXwJ6vAmPWSXy3Z57mC
	 MLbZKCjRDq6ZCq1O+SfpaPNhXomlyBTl5YCm+zoxH5jnBsSl5hDVZGpbQlDH83xNA3
	 U5e3W1BhF/slw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C120EC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974812578.22208.1853084462472700671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831cfe08effdfa9c25cad97f7831036d978fb4bcecc6c853c80cf03f7220835f
Date: Sat, 25 Mar 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679748125
