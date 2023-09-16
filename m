Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1AF134DE
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DEDC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694902508;
	bh=uy0wzv6HMmrT9m4zgSfhUoddoPHJo3w5jtIIzBeNEHU=;
	h=To:Subject:From:Date:From;
	b=I93yzLQQ0c7cS/RUs1WCmWGVaMF0x8t1gnyPxJ7Mjhx3+egEuvenSvZobDYytns/m
	 5+sJ2yVUIvenWx4VsrM45odiBNirMcOAyJjhOpSRh7XT/ADBnMsYdCXgBI7u867cGm
	 KVZuvytNE0AbAlryWQM1N9VGySVvCSqiZYUi01P95bONodFb4ZT4PFUQuzG0JMMJR6
	 mFL9BJUDh6jVJs2VWi0uX8ml1wfID+JitQdQ1qqIxJcOcV+Oq4w8gzd9Maoj+Lzs2E
	 H/8ErCFsCdf6ejT7rPfOyAdTArjm0TaCNYBKlVPhQbgbt+uLNTg2PSFNUuydR33Bes
	 bNddB8Nc7K6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4577C2BA12
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490250869.22399.7839896818893242440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c355261c534d9ced255e7cad61bd82257670443c1e505eb780957ef79f5bc1db
Date: Sat, 16 Sep 2023 22:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694902508
