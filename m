Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88537E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8105BC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665282053;
	bh=KriwMm42OyCpqNUuDyPoAFBScDdRbKl1mobgusEwUUw=;
	h=To:Subject:From:Date:From;
	b=IQMbTq8m1VKtheniVur4uEx1FtFf8Gqksyy6yNBZib0iJ1Vo9UAteRLkA93aEbpwZ
	 NOOas7b+dvTBMDfbhcQcp4HcaFeuZo9sMxRKLDHMbx3nT/Nd9UzNdRjHBon75AvoRZ
	 SXdUMIea2wHgnWYnklLvI5CmGGuhZK+X9jfgZmdIVJ04qV5JgVbv0BzB/ZA1A7syvu
	 JsNR3GFh5B1iOFPm0ZyoeDA9Ye/iwDC55Mkpxm0HJU4VX3bgyS7enHTpb94sG7jsFO
	 VySzfTtnxu99FDocj5PdyvOFN6ztshRggFjUTik/i8+FYgj2Ghxwib6fGW3ewVymqa
	 sABsQax/SUlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616F9C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528205339.29280.6409895835713231634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2586da6959f70c054495cc762c442364650b6ff593c07eae94e205ba01052256
Date: Sun, 09 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665282053
