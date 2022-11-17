Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C62290A
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708CCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668717654;
	bh=+rAeNqF/s52jwkRDlQ5oPAeRoF/e6W/BaEZUwumxHIw=;
	h=To:Subject:From:Date:From;
	b=vC+jysIMI/GNcrEx34pOAKhGDVG2sms+CuGI3AO6erXav+NvCG0sF96HvKcIxGYU9
	 crLA3kpcLPLvZGlYM+qUGeh4gWxPXsz7hcMDWfHTmWeKphl762HtzFe3D9w/WZxBwL
	 H0M12FIjPlEWUAlHh4stgqY4rGcA6fm/OZSFdS3wwHWdnYzy6wopKpOgzo55GUm+Az
	 yjx+OgnB75ySISRIuYduqp3Hp80iWD1kPte8hnEe8xd90L8MiU1sX4Y38kRYz01UUi
	 ojEIG11BhrDdgB1v3fhpPIuoA2XV83SibVPYn2yxxhQn39XN82mC3ZWaR5Pnnqbd8L
	 nv/yHJcIk7QwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54810C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871765433.2984.12718681243350611632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5887daa46830befe6ac110d5d49814787f39c147282395d6402d694620d1d65a
Date: Thu, 17 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668717654
