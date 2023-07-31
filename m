Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555187ED
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 05:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D8DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690779728;
	bh=zdWjVqI+hCRYuz7taQHZtlR4ObHTYSplTUe5QRsj6YQ=;
	h=To:Subject:From:Date:From;
	b=BEmeNAIEyPucvIGx72OOcYEp7E9fJh1OJDvUdgOOGj2Axk3gGfKQj83/xZ07DBS34
	 ib0ReWEjix+Sxnzj1x/18DCQV20S/fJW4GxIiueZvTgmr4gV1lfdiWNM1EGB+wVctB
	 TlWlfj50eSUBcTk/3n2mt7nhaQMqK+pE4AIVoca0NHdVUX+ZIXqLGJhxoq9MDyWDMx
	 sEzSSh6u57b0VUppdIWxJFRclEaY+rxyBdXjopSqYz/S2VdUJrohFTxLJ32/69Ywr8
	 lUdlBxsm3O/68GhgdRvfrYIyO+S8SONStA2fDO7Xadp/xqZpoz7Wp2xrIIH8sYfXMi
	 r9cGtSUYHZGcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A9CC001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169077972870.30701.15021803148229590932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5fe965483593bc33934eb880d4157b8467477689d242ca2f9ed84d612ff655
Date: Mon, 31 Jul 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690779728
