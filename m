Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BA5466E5
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D101AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690396328;
	bh=/gR/oW3ZqHIIE66gUI3d4fm7uDd70k/Yl9fBJRFc8Hw=;
	h=To:Subject:From:Date:From;
	b=IfLrMv4OBnYw9g87Oqjn6oEqGz+ustMATYEBy0leo+hmGVZuRXC/LEwaVqrx7lP00
	 JvVn5XLQgFizMKVPxDdFh3po6X/+HCnxNbhe9eDSgF1eC6IsgjKZr7IhRieEQI7VmJ
	 bpeJoHzb1/Km+fukrKcLdViQCysIQeRfgZme5FnF4MC6E0OPT2FmYi3KIhRUt3zhCu
	 pUbySSzUR3wByZITuqVWgbaaQDo2Gdk4ASaeUHsPAyA2mCmdUcOeP3SARiS41qC9gw
	 eO5ODKqXmIBQjPVwl/evmZ2LXn5VKATFs66x+bmewc+K8jenRJ4ky7VjYfj9czh3PJ
	 2vaVbdx2Qspxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1642C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169039632871.25083.14083245880638830959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e36876f4ab1a1c3915a7cdbd8d01e1e5ca5414b91cc50cd68662563dfdc41a5
Date: Wed, 26 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690396328
