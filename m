Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4CA6712
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCC4C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663348853;
	bh=lw00MPTs2p6GxDXttexj1D3/f+EXtNHRz2EBHeH1AEs=;
	h=To:Subject:From:Date:From;
	b=jX1Ns9L3LVwvJz5vTGXw1/vQ+WAP8hzaFq+yIgud1RgSQbBqoXr3XBuFjsqXKVJE7
	 O4lJ+jZQGD/4YH1/8ji1wQdY1CUzumHvvexr9JcPkZT5zvsoMR8JUm7z05N0fOZINa
	 A3vdBOYkQS3XpngUGUjHXqkEA4ud8YH2mxvJIJoGQiOHEC5JfnfOB8B1gW5VCGjNRe
	 PxOjKr/AwBT+EoX6CaiYzR4QX9uwJ46rAjB1UdumuZ0yOcox/deZ8CrMN+BQ7Uvrxj
	 vtDCQa4nDbw/zdf/Y2cITrvnJD1Ni8OUjLoZ35/76q3vM+FwEliepZuNeQXhZLZHJ9
	 VaX6jec88OhTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD46ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334885336.7947.10287192545872005344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0e9daacd1e312fafc52f284b2ebc557679c2219d27c40791791595b082a7d0
Date: Fri, 16 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663348853
