Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B683CF683
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773680694; cv=none; b=eSNNBp1MRWPeDjWyr2bOKFKG/slV04U6F/8hZd45/mS+eCMVatm6BnbK2ME/ZEby4WnLideDKM09lDSkOPbbnHhvb3lDzo0P5vFKh055Hh1YB3+g5u6IoNBR+xMqlKhR2kuph2tNlXJr7/+4mMrdBLNlG6ERWwJ72ysI1O5ZBhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773680694; c=relaxed/simple;
	bh=bM3LqUkC7P9jZN0Q+ZzHbB9VuiRryA84O7t1qm1Vpdw=;
	h=To:Subject:From:Message-Id:Date; b=geWu/7cdRvyDYuT91h0OVp9BXACjEY15VcYZXWfL3gXaqt+pz1/y+RqtXl8Tz4OhXkqRCcNa0gSPIyiFTOuxBs81qO7ud/IflZMaEg+pEUb7rf9CmV5MlxlsfcRGn+kezgV29P6crS70vP08MFWLst5UUGNk9ZLFnU8LrhoI4CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEhG0OZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEhG0OZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5CC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773680693;
	bh=bM3LqUkC7P9jZN0Q+ZzHbB9VuiRryA84O7t1qm1Vpdw=;
	h=To:Subject:From:Date:From;
	b=BEhG0OZwvcjFfY5ipVPimYXQQY96rdmlJDY9r/XpTuUiPCTczptVQyOOE9aNK3DEZ
	 K3CmVYteOUrvAl1ofq2NjB0NkOZm/P3vSqIUjBK3pwwvlDArsnlE6lBgrIMBArP55a
	 XttOU9wVdbdIvOvLiH5OVOYQeHtDSE/YmdTwo42TqePsM5lpREWLG1uQA5qwgQ95Ii
	 7NONgf5gVzhCmqSOBfF/nVXUgCLiaiyyOXW7c2H+gwcjpPNl+VppAJgObhHy7gF2vv
	 /aRA35yKgKIVVXiCSr64qWAFoXYIld/j1ML4Z/iHEH4hng5ldEFqClsRkOd/qovkQl
	 0VS+QnzQxk6uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041DF53D79
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368069358.9398.10706970634467704770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0af4a593c927cb741181074775d6267b1a8ac2a1bec3af064d9b9c7517d2d1
Date: Mon, 16 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773680693
