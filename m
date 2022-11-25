Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6D6846B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A58C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669407654;
	bh=OpIfNo4rNFpk1YynZc9AsnKGenlKj3AsR9b4macFY+s=;
	h=To:Subject:From:Date:From;
	b=V50mM4bf0p7kxnD/e16N3HAG3/b4FYH+FZrbkM/Nr791GOH2pNLaxjmfBXNbWdeUb
	 +1k16OGLXVbOgQ3F9Wc6hMDmkpH98BanL9HvJX+e3/HDqihYWino+0Te30g9GgN9Pn
	 NNDOY1+YRjm8ErftClAY+pL/RO73ZEffKhtdwQOqvp2/NifZZ7AYb6mwClCrIc+8Xu
	 rke3GNTVasvWCdjXB2JCUwbc+aw1BIiMyUCJ9ZZ8GvfrQzQJzq8WuSuc7XNZbMP8xm
	 aEuDR4Wvg+3+P4EBUsGSKMhZ+epaL3zDdOBYAOetWzGOp0Re/+E9o1kQe6+kGd0V7a
	 iXiw2bTpz2iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD41C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940765438.17289.1247612534665071069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34b8d2bdb915d52a685e43d031dce18185901d3a0ebd4078e58cf9005e9c7a3
Date: Fri, 25 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669407654
