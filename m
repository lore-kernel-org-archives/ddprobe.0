Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E86328A7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAUj8foN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D14C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704475696;
	bh=TBC5TR/bB7uWjumMJaWV/hNM7sQD4q2SchXPEZCr2eo=;
	h=To:Subject:From:Date:From;
	b=UAUj8foN+AJx+um4NBXJsMBXHIVnDvQ2DHVCfPQUSZsxKqFSwgYkNC0LCGCX5MJPo
	 XlG+4524Q6PT5doRCEdP5wRvFPNOGLP9eQ7c/Fx1Rc5CMrclx8OYaqNxq/MLYUoFzG
	 OqnV5u54FX6+Iq3L0W9hdLiCGeUPMuqjvL48rczg1SCx3QDEYk88qxRL7h0EExiiPj
	 Hx7DlepiVy2oNWkR+uW89pZ56eTZ6tXqCo3se7A6ngP48nooQi1Deo/XilWg25rTtr
	 38pv/6g2yc0x5NE6bGrY5DFjn1gsmaGHY0vLk/aXG0mmz2ngKAZYgQfWmeBe+qLJzW
	 uwYJmN6ZAJKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6453DC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170447569640.15085.14741621847786616841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e305ef0da479f40d0014cb871e871c5b24334ff25f8e6c5783831b3fc96276bb
Date: Fri, 05 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704475696
