Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EFD6FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD12C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682110145;
	bh=Dy8yflLH86f86BsQQke4eEA9dsY9xJeaE4Gf+6bjjZU=;
	h=To:Subject:From:Date:From;
	b=DZ0QY6+rbA/TWaEAFXYf9jh7cILQgfW4uDGNf0N32rR+ndOOKq1L26EFALq4rdDfR
	 bX1Ye2DG0/9vBTwO+9RtDGtE3G7mhAidJplaQDi0kBMoHBgOFf0tYUPDD05rfjxsFK
	 uTVpM77aKReZfGJId/CPNOQqGEkEX2IXz/+FRi1BDcxmWqhWISbxrRnCCLa2UcOn2u
	 0C3zTka3JJvHitefZejFPOmfgL35kiroJgVn3hH0/UUkX4gnKDXP61Y8U8LDkImjY4
	 oW3IVIr7nnhHGSr7y4HnbjlpXsCwePO9kxj8xEt6Am+/XzK4t8iwJVtGIBervFracs
	 IxD7RsUyg4XXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA45C77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211014577.2621.13545311374419728977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b2bd9c395e022e52c06f00c42d695471b83e1f08281cf3143a466623001955
Date: Fri, 21 Apr 2023 20:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682110145
