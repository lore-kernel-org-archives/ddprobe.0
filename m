Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FA12116
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11461C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678863006;
	bh=fY8i/ACPXi23kX+Ebqgo+ha+nVZNIiBiGyn2EndwhgI=;
	h=To:Subject:From:Date:From;
	b=l7cP/uYGYBTNlmAzOE79ddAS4O/IHC6am1iWcBWZDirpzJWhoHvTQO26Ub3MPkRCs
	 MGhQgN7gYUPc3Z4YGA/1Fx9aR6B20MO493f4EbXp0YwpsjuS4Iylydj2hzNcL+kZ/4
	 9f0GCrVwKUcA36OnK7QClFjH6gg7ZKD3+EXxydWd70QKec1L/FSi78hlh/NU5AaZ0E
	 fK6SDQsFjmOyX7z4Zlgv7+cMCZv3fm+U6ZDKAiwMWgJENRjqUz+lOfzAV19BidRQL8
	 Yen1GhWY3vAtRjZsI7RRx+/4/Btr7WIZk6dHFiTEQx5no9tpbj2EA+8rxSbXAOqU8Z
	 KyzcVstUT1I6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D22C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886300586.17667.7874456988490496949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bc307ec0eac150924e0997b12f3ae044e38479cf87163dbf4ee5cce5d3174e
Date: Wed, 15 Mar 2023 06:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678863005
