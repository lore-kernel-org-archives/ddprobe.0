Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AEC8BE8
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F004CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685805486;
	bh=7Rr+FrkvNg5WM3oJsHm1gmwGLNcW8UoyLsZQOb5zmvE=;
	h=To:Subject:From:Date:From;
	b=NQ7aJgx/EnnYvVs95hhrCtXLp8CgU/O+wxrtL5eNybtbClkVJKcBp1rs7kIJM99MR
	 9fB60O5h8U+pzRQNYlUf7QlzslddGY/r2f/z+l+xEmINpgFHdNPXXMboJ8O0ltvltv
	 TtPEaRQug4fUUTY9dAp3X+pf9nHSiokrM92KWhLCcaiqRtcPylYPWu45mvEX9eEQWT
	 VQMICNxMZZA+bzaoVetOjxUe2/uCL0dL3fH0riPFA9Sa5DTpMnIqtDlVgMFrByjLGg
	 16cd17ePYMk5+aCAJKruIB3LCALbx9fPdRPgYCQMluPyWEc8oqkwUtPfMDvYlKVfZm
	 n5WhQtVhP0u+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06A7C77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580548579.13147.9008873993253387701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b350b7f831da15d24c502e494742c2e55fe7156f3101c81ccf2b5845045eb415
Date: Sat, 03 Jun 2023 15:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685805485
