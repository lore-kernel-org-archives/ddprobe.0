Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6471BDE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtIRbfqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74F7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697220429;
	bh=Z1eEHCmNlp46ZdCl154SoQL1/cRrvgyOvO49zyQJ62w=;
	h=To:Subject:From:Date:From;
	b=jtIRbfqHOPX52TSDaPeukRnIsoBWfkEs8xkLHTi9p0X25pjYKJZcnQmnNH14YRIjz
	 bHobR4y+p8NL6s6E8Ad5ltXBkRAFXUuuk7FmNKWLn+q+uXHOrnmyajRPlKnOfPpFVs
	 cY28ycjF52AXajlXkVxoX+nbizzxY2BqZYwMvUvWWrOQLN8v3ZIgABf/ziNo1rxz1I
	 A05zE5nm7PYOpp/JNlgaENjIYZgbsDS+xPyK+9AkjyfuhHd9jK5rA2AKzZfLc9hZal
	 BpDPZe1hp/IvssPKDazVFONjcY7gpSwdjKJ1fQLS5RBs9bi+OXrItLd92vD0awccxd
	 UVb0U2yB1FufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44A0CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722042866.715.12409699446859793148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92217c5eeff5b743f02fe42c95ffd370200981528402a954c61a6b5ea43d2133
Date: Fri, 13 Oct 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697220428
