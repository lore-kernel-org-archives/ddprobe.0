Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04CE7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67155C433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664724653;
	bh=dvrUPrJuY7RHKdubRoPu/cBjWhsbnjlbEAsGaju+Vq0=;
	h=To:Subject:From:Date:From;
	b=UDnQURLZpGepTTNlWr6TI9Hw36Q3CWE8CuGaoD+feN4k+HSewmBlM/L4R7vwFUSyl
	 b3tAbfvpabP3cGGQkh3J8iKdhEp2tSHyrJl4lYHLeyVpvoZhKqK7i5BNrKjmb37oSa
	 tx2zAwz2MeV78s9uZCzXKBiIP016S8C8rDOkES2toqd79//MQFjzOyVB2itfecmFvq
	 bsQh7VkmP2T+6upGDzzS8YCGODBAstVLSfOhT/vxBHEgbyLUOOqw2h6DUxwCHDjiPv
	 CXjD7Yqb8jz+iJ5S1Ukjbrx6eNv4cOZ4L49OUWZbjyCA6TFuKxEVlXqP+enq7XBHwA
	 /YDjUE7NuZjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD78C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472465332.21367.7780206786921988400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee67ab9bc3b0d268c753b5c6f0fabaed9eefaeffeb8a75d200cf0d552957126
Date: Sun, 02 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664724653
