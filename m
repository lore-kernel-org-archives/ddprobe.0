Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B976010EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B992C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663653053;
	bh=Opw/6vwDMyNMMawGb6Lv9yM+95DGOfX672eWVzslB3w=;
	h=To:Subject:From:Date:From;
	b=foHMhiP3eLzFf+k35ut+OjkYEMBNaGNRa3UDImYOwbQtLK9V7CUyzd66YX8WyAx5X
	 iswtlCn6tfYT7C0jATFP7cmLmp7BFsNL8CuGGrlozuA4OULv46r9nGZicKuUFQygzk
	 KqVSmppM9GBz218ua9zOa3CdPz/t5g9Db42dzcgs0a1WLHmYRjZeUFwPxD57zI/ikB
	 cTeGXPiZ86NESTINdZaZtswqRCkAj+46cOjDBjTTRrUMx0xI3fEPEm2X6Mi8X15/+0
	 q+nIlmOnNPma+gosu/w5v3Ys8yxiEqaQUE+QOe39Zkzza5vi8YuWX7u1HzBPKyJ4aE
	 JekBax5N5wO5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5051EC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365305332.16053.14709075261368541047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8998655c774b00b76f662d96047759bef31b5d85685fcbeb1ae52cf66ac2c4e7
Date: Tue, 20 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663653053
