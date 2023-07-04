Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795FC567B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D242AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688484968;
	bh=2wetjZKzqoNz8R0pd4800H4/VQDTP8zjw7U5yYg8ioM=;
	h=To:Subject:From:Date:From;
	b=a588+z+OCAv6Kc9B+xzcqKYpJB2I3n+cYmUtjULgC4J5Awjvak6ojN3qquczGeVup
	 E6GedJenK5ZsAGIRo6rvpJhQmwp1lDuZnE1oRxr46oUWOX6ru5qp1wc52yuVkVjKkw
	 o9DGhzdipuFzKovU/m2+AXi31jEqGjaQlaSTg+Zcn86IovBA7ds7LNRBub+DeQjGsH
	 n2KFWyEfZ1S8bCzAWuLrr+3S8gDLgiy7gc57mmKzWWKXOlknKSNafQdvNQ3WmPmKWh
	 ikpZhYjcrsUW8BcSdkFomqUIyIOc14hW5cEuIAjcvQMqeatk5Oah8ObfiW0ckpfLZO
	 dAxJ6prq2yaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F16EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168848496873.12339.1631939261032846432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5dfe57dbfa1ec2693ee812f4f61eb51fc74fd780186d3115812e062c0e0e23
Date: Tue, 04 Jul 2023 15:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688484968
