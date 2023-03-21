Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5E710780
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E429DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679436485;
	bh=GirU2bjt8U/cBMwBSMjU3Uw9LAq9JDsRg7+gRrbYS14=;
	h=To:Subject:From:Date:From;
	b=SvAypG4BUKaof5V2NozmHeqdYSNNaANGnDq7yw+9X0rXhFWEgLQn6+hcjIuMZyhre
	 GvJUXq3R0xmt55FJqznljkLJyK9uFKJI05N6o1jGTWvCdjIBNE3H/qJ5xlrysx3H+M
	 rwvbIa4rf8YhTe5uweebue/aNqd/O5z3h5FReDNcW8dtM29KyJd+k9ozjtuQTtjX7p
	 l+hYSfTNvLDIhsdGYPHaFkakLAO4CvLWRYd/dWQVegg7gRSczQoB4rRJOGLfNQKeOG
	 jW20vzHN+tvBBpojx0NmccqHnsgP3U4NbEGjJXq6qR4J3WioVTJq9cEhJ0s8BPWxi7
	 yUJIs/jxJ07Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38B5C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943648579.20156.9476420253020113652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59c7b4613f2a177daad8f751bb93632c971138b10baaf68dce025ce5d1a6997
Date: Tue, 21 Mar 2023 22:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679436485
