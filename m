Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C988D52C
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuMHJZz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881F2C43391
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699430896;
	bh=xpjtxA7WS8g4Sf0USyqxlS3ZaHXI8clOmFgTD+pmw8I=;
	h=To:Subject:From:Date:From;
	b=NuMHJZz0w5YGY8KHSHo+qP9qGodIedJbi2af+0evOJ0laY7DaqptcTGFAzswvzKJY
	 T9P68fk6GM4NQQjshrlTB85XUjkfZFvNxw+ORsrzAWx8fpUtJRpUzIW4HFrY7tgga6
	 z6wXY3v+g3sDnczZ04SoyAhR19sOcR+NIjlf/x0uyknpFcYOYoGxWv1A2h/sVFHOwR
	 zQZWylhKioluzsUfoHEhvGgF5Qa5/SmytjOu1q68+kVm/yfo9AcsmSI5KTyKTeuiDy
	 xQuHGm0kXsqEgNKF5Rev2L22QhsqHbjvYq9Zp0mwyVLB1M14V/DpuARS/KA7+isM0h
	 owlR8TDjtzstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D72C4167B
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943089642.20413.6633328651033701752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4813fd5984471d486fefa971e3f71c21c00d24da4d222131a7078433d09e00
Date: Wed, 08 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699430896
