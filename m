Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B9E3201
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D751C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671321087;
	bh=G7ceUeDbkpMroeSBgoJCN5Ku7S+x2eylptt8EOhQaTU=;
	h=To:Subject:From:Date:From;
	b=pweWEAA8rXz2/uoOF6C8XtMTNMdOuqK8012eL4wH1kxjoHH1fQLEgyOUV8bGpC99L
	 jKjdgw84ZOwN+QpQywCf9F1agH3mC9PTGpNjxv0MkM0RJtA6ny73tUhzq927nk2bo8
	 W3O+wfComnLfSaBQeX70HtQeIACbilOBYTwROYlaJSIXK/u8tecQ7ggBLfmyGm+zz4
	 /cVkwtSsLmy6e3hSDwOY8UMtXIUUujGTtfdeQCgFidZUnHnuWZ5jtvFVYZnpBUT5dF
	 +QJEvbEXVb2F4iipJJwm6pb4eQ8q9YjEGEZ3IfYKD0rRrh4fw9sBVXZVeVjgPNFfVx
	 AKPRZRr0kB1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79EACC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132108745.24141.16565690814252511467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d904d78c92a6fb6b34ef5f5be0ffdf2776bebbb4daef127a6f39e6c5731d56
Date: Sat, 17 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671321087
