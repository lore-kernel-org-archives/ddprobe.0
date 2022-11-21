Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DBEA4F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA7CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669023054;
	bh=4x+g7jBAUeOMsBMc70QdOJ0QPbMLDREMLrg8vYw2xEA=;
	h=To:Subject:From:Date:From;
	b=F49kr4Bs7fB+O2kUkRqiSxRWiNk8IlZWXIlPsrCeU0NMyBLUcTl/VueG+KUB2ei+c
	 4MkoO73Hbu9uhAJKHvDU4NKEJ7JwSIwgA+/x0VHh3iIJvNS9pDfQhzXV5zgcYzEG4o
	 Dj7xDU4ynZbPtGQlMizTtVT3pl3JK2fwVEHU89wHe8CT8otaDYCvy5iy8udk60CPQl
	 Kdnlef5IQEULTvjnbkzJ9RMnc1OqICKsHrquE/o+DTX56SqRJyvdWcK4OVtjRCtzYc
	 x0Pw3xBCs9mR3fizAMo2B+kV4bjfavSJ0GQbChhDUkGX+rZ8x3TDyvpqMNSDSEK5+9
	 c9NkAPdj4chKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B84C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902305435.27903.322719375368297272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bdcbe8050b1165f9269d6da85ec925319b40b83e590983a3c8fb038ea7d31b
Date: Mon, 21 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669023054
