Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388C520FB
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2D6C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676531405;
	bh=X+nd44fhtSPWpq6bpKr5C9M2OCi1ol4bhFHtjJ7BcOE=;
	h=To:Subject:From:Date:From;
	b=k7EFeFUKRnQuUbagatOSWw8sbCrxhe21aHEYDuYKFfkjwcoPuJNfqyVGi5CvRD/mA
	 PbCKpZmkilxSwdL8pVkZgr/b0gu5LmGllPFAW7A1ETwzx5OhcCRZCtwvArOWSehpR5
	 GRduESUTq8LsHbbOXt19ud1DlFCkQSkGrGPSoRK/FOlrGI6F16G8VPUl95qxDUwXR+
	 L93Ku6/RZr4zkRKJ63PQPZ60xUfJ1vDbUbTv/wwX3I2wt+hIr4kVEyQvYgZ2nO6Q5C
	 8IIiVwyju5JehLZ9ewm5de6dCMo+yRXp4GZdDSdYrb9LKMtHRDLi1NzmDIpZHPMUhT
	 ptiuhWH+7YMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB8FC636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653140576.23955.3481873322148861962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a325d6a5fe325ee64c00a6418ad52004f8c60e99eca2bd8ba1e1b30b8bb42f66
Date: Thu, 16 Feb 2023 07:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676531405
