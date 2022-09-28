Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9A62F22
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B54CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378453;
	bh=7dySE0a0fgeq0vVHawmL7vaGwQ9Tp9qjeAtmUXzf0n0=;
	h=To:Subject:From:Date:From;
	b=p8hi8B5aShhgVcJmyUOYzvpmSwnqViCQ+e539scUSB4AD4QYJFSQ7CyYTrbbATdmU
	 ntYJwsl6ckV38HaJn0YLOp3yioDOoW5ISSlAMCqisNIMsh5U4t9jZSHh1UYHR1Upd0
	 OnhREe9XnUDcDlm+vovDkVycZfm5tThF+2UQVLDIt2n6H4AaAYqrsi+cECSfYYGoC3
	 uhKhRmqOuqZqVOQYk4eeW83YUesUrA3D8/DPOhsK8owAuf8Ypx5iUilnSnf4gOwIUN
	 iGODoxDQG5O1k9Hd7ZEaU/9fQLpSnmyLMbOl+4nLw5cbV7cyRI5UWRMojnwJLeoJv1
	 JyCo19Hfa1I9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A97C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437845332.13774.14066461591472523677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1c85c2da0cdf1a15bfd69c3854c0abbc2cd11ece4ed0e02c5a52a6a11cb1aa
Date: Wed, 28 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664378453
