Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DBF883E
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F14ADC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682712307;
	bh=vkfUe0iWSRzvxpplu/WqF4YRK3O2+DMkcfcKk9tOmLk=;
	h=To:Subject:From:Date:From;
	b=swbkQYR2ddsUJo0AG0qb5HWad2hITqE+mksdPw/M9Cya3OzZdhSGEPRu/vUmsUuxd
	 zuGf8RWbBnjKAC4Q8VH/0Q15D5lipHBvaIVTQt3bGHgb76XUP4pnz7yQlSv4b3zyxU
	 VIExuApWXUxjyeUiQ8Fx3ciYm4MNof4KUQ5bGx4HJqh0aWEC2L6ay4/TrRv78wyHgL
	 ooaBwM21SMYfp0Sk5Ed6KmMzmEFf7NCD0Kq62jYisIKCxQgLUtqE+1++QtsSWPiLI0
	 mFH+mWFNfCBgbpbJEZYfp+y5ySoN3uf2Vfn2bj8gkl/Tz0gc31sogOPOMS43/HJmjT
	 S0RSG08aLyHWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A17C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271230584.17754.5373814632931877435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c090d52bf02404f16cf974a2af5017cc6e60cf71687ff89a81cc5c23fd23e5
Date: Fri, 28 Apr 2023 20:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682712305
