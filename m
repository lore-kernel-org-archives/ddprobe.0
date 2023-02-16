Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102657B
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 18:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9024C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 18:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676572985;
	bh=oc0rtiVU+HuW1G7DSAWdZuLN34/O5RaVqmyXiAcAzx4=;
	h=To:Subject:From:Date:From;
	b=aIUWjtwYz2Xd4sCgRHJQPKzm48TinDr7DKSOymb+a4vk1byuVPM4iR+fLokg1eGGy
	 +3O8kkgCw5pEfp30jXnEk7XCSujZIJZzEBn7F2QkwUR3alvNZ83P3necjWmV8hHASg
	 GD7+sGZjKQ/usgUgBICyDEPxowIrtTBu8LH47wSGm99V10p302VHuBYGznc+VF5sCE
	 JjJIqKSYbf5cfrfwpxM5YOYzIBrZ8b7tJgaznIuXTA7uP31c4XkVRgR/JxZaToBNx2
	 lBIC+iZxX5E/vlPHm4RVlA+AgsSQ4Ll8asqLTSSMcteDujNBI/BkBE+W/6XzEYNR2i
	 S6CJvXGqPrQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD04CC636D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 18:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167657298576.14751.16147305510083248546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325dcbd0dbecb9559436c1fe1909d51bceb416ccfe6a7c0ed6f73116c9aa14db
Date: Thu, 16 Feb 2023 18:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676572985
