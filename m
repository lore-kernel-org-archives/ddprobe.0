Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D18F55
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrfaF3Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D0BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698389896;
	bh=ty1am83zpYVySoTHTdSfPffO3EOokS2fykSarmPNmno=;
	h=To:Subject:From:Date:From;
	b=XrfaF3Oc1/RT3iuX5lnj5HoAVw7N6xQZOb69AuHgGwT4NKt1xEQFHKG1mS1hy1gBt
	 YYlIWH6ARfYhU0zkKzgx93c8SBYoozsdyTy0YMsTPDJIY1wo/wULtTnDsRUjq+TuxI
	 NKaGYj3UhrMVpFKRBNsdg7Y9ryQTHFxTWDnQAv9KEYMYUc8Zczj8uJl4kA3ToOrOgT
	 1QQaEloJERU2xmGVC7SQSn0R4PLTgCsbyDW32XrUI2maQW3gYKPn1IBJd7lzZVznN/
	 6X3ri0V7s+BmFb7ASS563MFJ3Q5njm9wSxRg92Q8UlI+ZJOrWqSkN1am2sEy6A2bfs
	 ZMf+SndaoCNJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D499C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169838989643.6958.843094524699725155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959e55e569ff0c60720c3bc23742bc78ba56618bb03cee2f60580493a90effd9
Date: Fri, 27 Oct 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698389896
