Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A9944C77
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716962663; cv=none; b=GDaZSj2qLRveehNIAw6Gfwk/W3sfAeSCVBZWK1kDQptpqbIFMhocTUoMBSLihFPAslYWKfMtHVAcvDFi0HY1C+jVTvG61gv5vSn3A7ChXxWoOUL50SSitxOF8hDksNgTvuuYftYCa++fuWPRDjVEtCFopAiSWibf38oK/CiBB1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716962663; c=relaxed/simple;
	bh=uFPZEbKj1a9Y+67/m+Lq1MXyfh8+71Srh4LMIuZ7kZ0=;
	h=To:Subject:From:Message-Id:Date; b=mIsG7RMqxM2EcL0kTD1qJ6J+4IBNK8pKVGiAfb3unCsP3I7sz/TzFWgnlBAj3UYQh3augfuGpP/uB1Bi2vdw7tX6b2i8MhOCjg1sA2sd5FeMvlNOsXb/wIN9jjKoC1keObXcjhL/TDaI9hr2rWvJk9FNTZdV3rZfxt9NkV+bOl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3JaLz8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3JaLz8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17F9AC32782
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716962663;
	bh=uFPZEbKj1a9Y+67/m+Lq1MXyfh8+71Srh4LMIuZ7kZ0=;
	h=To:Subject:From:Date:From;
	b=T3JaLz8majzjZXalDJ1afN/DmqBukS9J9EWlObKA5aPe0DCTy/ROZkY1zJ5G3W5lC
	 IiJljxhKMD9WnReLCbdfIcXuLi1adQamZas0lLms3Eck0VJU3OLnlMP9o42Pa6ZuZj
	 uwYu6TF5UX1xfWhEOoT8kyGIxYufsZY5Mb7aMgIMJoQSGuKnA4qxvMjW2AenABfeDd
	 /UXAzVf0TK/hfEieal+DvmRk8hvhsFVNdEcF57CgXOEx69GCy+ninWTQ3748vQ21ZX
	 dIDP29FJbFgJFVWJMgh80Hb3RE3GB9OsyfLecABGatfT5TdIy22ilxeMleZzeH7iak
	 Cqzu1o/pUBpkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EC1C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696266286.30046.13633972322490360331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d4cd3cf2fb45dc1a09830ffecd08619311141714705ff0dd264969e8bec572
Date: Wed, 29 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716962662
