Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617817E
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCcR58U6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D141AC433C8
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696473368;
	bh=iTftYBKvdz/P6O3ICkHGACKhRvCec5wVmappZeZNzZc=;
	h=To:Subject:From:Date:From;
	b=fCcR58U6IaVuGnVRtcY3yLgwW6ScUELAe+lR81ju6hntQ4dOi+psvD0wrzqm6zTAN
	 PdDGwZMv1JgFUOi1g0aEqVkCqvH+83wz8hNQiHZluD5NyTUZRO1eDK4SIvb/3dna7B
	 mAO8sdcjHZ/wkt601hJ68W/AzXqTQV5dczcPECYAxxKiCLkNzlEOvnYZAgMAwakqeQ
	 UgBOEXCxefywe68XMlkRClsfN0pWAyGQdG0C5NM1HyNs9/cRHH3gmuUYbzvf/1j+fb
	 iTEZBoENaqjAAmefq/t+Qb9HGTCGSdkXe0nbxkamqndaK9kqFkHFJYjIG40MTXkKB5
	 crYxuYPaR0cAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A830AE936F8
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169647336868.3511.16539028582619785564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ac27a878e75a6d527f1c17d6a32491e35ae7161d8b5c982fff0acb14963605
Date: Thu, 05 Oct 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696473368
