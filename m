Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E87B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140BC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678263065;
	bh=Xmng+ubAYKoQbj7lSBUtsFaNVMKVnfzyYVtDdsGCnBo=;
	h=To:Subject:From:Date:From;
	b=bbAK41MAC/3XS6716vMrE6oHzqIV8e3irtANiwBhrB9laGXI3fqUsjanm7IplAgGX
	 68EWvhengDRQWOZVGReYgM5jm9Ld+HYJC4Qgut9WgHUo16N30CJXx0vc4Wdr0NKPUm
	 yv+9XrC8h3LfCX7n2TcZA0i4qRUce7S2no6OHbINZBENL5BPR3a6LuZeAqZeqgBmg0
	 egb4u4hjUTrNeb1spmurAsrj+TQQhkjN+myK/EXMnrnOhdGZxIUB9t45XNhcLqKb6J
	 aDo/xTyd1GLnc68atTOBLCmDp1jXNNYT8fDnNGBmhaIO/Lkh6RTSlOd8XJTxg5KfGK
	 7EjWtPMfP+BZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53F6C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167826306573.23566.8451762175809573929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4382175c45cccf5074ceaaf8ab049bc060de99a2408c296e2b16adc36a63ebd6
Date: Wed, 08 Mar 2023 08:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678263065
