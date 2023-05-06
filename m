Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265012566
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C42C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683398885;
	bh=XLZx9hifarR3K7v9zeOcw6ixBHZOcqpyPZnuAWy9S4Q=;
	h=To:Subject:From:Date:From;
	b=jw+NrElj6sRiguU/XsEc0WX47wvWZm1FK102wjxsC+6MvGVyklHpg8Yq4+PWdYWNp
	 8ReTuJbfsJT111Feqf8jvUlJIpU/POEDADBG+Vzeg1l70IuDQV6XL2sLvH6CgKp0cw
	 CATpD449xgL02T7s/0l5OSQt2wb+Tyh8pn5FUK3QL2uZkwbFvhJDN6Wy7G1vebP3eT
	 KCfDD8Dbn3WeqvyHaeX/hMqy4INy1YMVDQufZ4JIVU17SoYbHjSH6dCGkN0AWBYgE2
	 PSzTDjnMjQGnmDKHGUti43jfVMvh6RC7ENOagFu5C2rEJFmEP3ctON+fENfpjq2NSt
	 A+lPvYxx95apw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D3CC77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 18:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168339888575.29325.16018718836815743436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9de9203540b8b97d986855650cef32b4998e2b828acdf103d755cae2678adcc
Date: Sat, 06 May 2023 18:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683398885
