Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4682E34F26F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784368714; cv=none; b=NWNcjOXR7PzOQW10yYc8ECJdx0kxoIPV9RqG3HGEYtjr1P60xslFsnD3EYFR8gGWkw14Z2WDSECthpJMiKP18tPA8hfIqggu7sWF/DROSmykzjr6DBKwrUs3PDBixLRHXKyPEmJY9GY6r8lqDfn5XuMKxPdEF3tFbdPUJha4ngA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784368714; c=relaxed/simple;
	bh=nJ5ILPuJDEctGLEP67NEuprcRlzWup8zzHMgXV160v8=;
	h=To:Subject:From:Message-Id:Date; b=bLqdIlD2RYvhN/DYHjWYw7ql0NiPhgRm46bZdNAzKt7J+QmRo7O487FsohyDbraUbOzawOUbHaRc1ejM3aEDc8RDVHARR5m2DELNc9HPxTxwVz6QaDdML84O/5ZU/DWFunotV1ICK1aZIO0KkV2cL2Zux+7JUWJZ3ZiYd9ra09c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeBHyDya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeBHyDya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33DBC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784368713;
	bh=nJ5ILPuJDEctGLEP67NEuprcRlzWup8zzHMgXV160v8=;
	h=To:Subject:From:Date:From;
	b=aeBHyDyalw1v7WXK3ZKU3A+DJKhbsIYw1+oyEEV0ISQoVr9gWlvt20kA72TbON5Cm
	 wwJMCzGnQUQEG1HesTo9ZU5jPwXiVpP9xaK2Gaf0clJSg57LR8NsVJsrUN7dqogqvI
	 n5b7/xpQplAyJXH7rhjil8pnSh7EYqFG9yCfrgD1C8gb+YxnOR5NsR8AAV6CwgXjUv
	 UTm+aLAB84Qhry5LLj5XyQxzGUIrj2AAIm3HGLwwVOqFse0hQRQ8ps4kHh4y0hVsr9
	 tpxxymyQLjGdGA8YYBJPxwsiq/+CHl/Jb9un4Pli0Gt2YG+EE667KUxaeJVC/ZFBQR
	 OUAFVCyAQVtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DDC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436871370.552.2110498368790936252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0598b24e68c010666bb931fcc4cf3672dc4623fe42b4b69a457b2af440aa3bb
Date: Sat, 18 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784368713
