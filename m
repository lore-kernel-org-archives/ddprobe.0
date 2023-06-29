Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADD5223
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB736C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688015588;
	bh=duyaGVQOPkdUo0WSJ19tOzAWvFn7/8WoISmIwXXa3Jo=;
	h=To:Subject:From:Date:From;
	b=MoyMwofBNrGHhtvmYNLgWKdRvqt9Z3Ihv/LKPyVLTtj9mvsh7tEd/tjH74r9JDsUk
	 twIX3Us6MyHC3fmIVM52f5j4fV3OPccuDVbcf17fH9ej6IS6tFw5NKbeOEufTSHEVg
	 nkn8CKVaaYKzHDCJ+7dHzHFo7/vRGifz4zr3oo6hu20u3sIfLq/xXE2jb8HvlPoH6H
	 /2Gw1MscdPCaio5OKdiNyO5GdFXhkZseJSZXzu2em899MZxDxRFTW1FG1/D7AB6v7y
	 5M7Otb/Wpaplu0M9rG8a2UsIDtL/rb8TgHeebbAv/nMVjrpnGp33oc+7HfPthQzD4t
	 ZMDpgC/b5VLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AE7EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168801558872.20825.7831617297150365650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a371fc138e5df948a4c23a0ed84c1231f620559729779eb8031846ff0a63c998
Date: Thu, 29 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688015588
