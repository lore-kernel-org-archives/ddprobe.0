Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B7D8F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 903B7C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672772487;
	bh=DmPy+V37NioH0qWA8kBpxOzX9NKn5ZDLa11S8i/9ELo=;
	h=To:Subject:From:Date:From;
	b=CRKJl2J0mlhiXlE3M7ujTPhLO9VsGEWAZlStI1VGUQk87F4m8GaK8Qyr5f7Jei3mJ
	 1+yBKAoE/x5/qxuIqqliEncXbFFzPg5hNaFSsTzDrQG+fUx45bFHDVrtm0phG6Avia
	 iZFidW89gaHtLgH3lYpGkrIZK3I+42+wHLPppCBXJbKyBJzSvjb3+QsK6GF5MCEvOF
	 uX4FzOnzcJOa0EVeqTrw/4Ac45AXYy8FqmOtsixvVtZEbY/lvG9xyl/DMaiA1VfYZ/
	 XPB0DkhJ9/PTmZJKHpxMWu4pOzYo4pXhS1BdT9t5EvWkBXmWhsAxlj72X8jFOwPC0D
	 6tVK1/Peyjp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73038C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277248746.14735.10213999819142263061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e850f045954efe68c884da996a3d02e5a9caff0b3263f30d92dc10b7ad87b4ac
Date: Tue, 03 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672772487
