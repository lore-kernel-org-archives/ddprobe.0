Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE1863B3
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD10EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675268645;
	bh=exoXRlbGRq1hiXuskwnzCDq3WZSvmWCtJK6c/3BMedE=;
	h=To:Subject:From:Date:From;
	b=RlkNqs12yMj5Tc8pPW7bXQjuzEwEKvg9w5+jIvRhWYKO95/ZsIfnQUW54clJ2tw1h
	 xZG9OsxezLukbIfyDx78PbyW7UZtvAZkIFIXzkhzKuJi4bqJOe6SFMMs5lLYyexiwC
	 5e291olJ954XS9Vh3W/po6WeIrFDYZpdAEhMefwuNyaCCDrQJfgsOvRQAOj9jDDBxh
	 S1P3h58OspwcF2W9/DSdXs7e2ApzrrM0Y2mNifqK1bDFC2VjCSWlTtuATEi6P0z8xt
	 absjZtA6QPqpjEEjMSSnhuVRwrK6O6WNA+FP3P8D3aweMVOnnqueBmmi/9P+NUKa1T
	 tRds4TwNHWa8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD45CC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167526864576.14937.16598233997984910269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2516d1c36201d243dd610748cc889a3681d481f455f7fa519a4a59bc0710c55c
Date: Wed, 01 Feb 2023 16:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675268645
