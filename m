Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F6F7EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710D5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668945654;
	bh=m1K0Zm9O7lPRYTfH6DIsTtqF5odYGOgQoC3V4yTtk3c=;
	h=To:Subject:From:Date:From;
	b=nVtWMrWbJ40jXJEsgc2JuzP19i1IbLJTOsWTkI5/xzb3mL3TvfmOHmrahDOZjfnNS
	 O3AlTiABgk+mGu5t9mOIK7HlZbczNPU40/lIsb7HiO0gqphIw7RLC8ShLdDBjEH5+n
	 b4KX0nCOIgPOqqfMVeYnYLbsi1f++eqE0iGlHmRJ8dRHKuiMHUqwJzH5UqoKYhULrC
	 0KAamluvG+lE5Zl2qPPxE2KG+pQJc1WJ6sGNluDjNlHrO66K0z3EAUFqzcZZ99miAu
	 x59L/srHDxBpwePOa3HlwnzDimVkclOOU2nERrrRI/+yBqWH9HjtF9MmENYLBh4Tf8
	 99uF4ZV5c8hOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DDAC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894565434.19307.10818416987407666549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774219631fdcfd197e0c7ed110554b114c252087641a990a6b4c569865fd2165
Date: Sun, 20 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668945654
