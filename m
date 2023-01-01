Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD815B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881D4C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672590687;
	bh=3fKh6rMi7Fc+8iHAGpLfpnwXdNBGYFwK+WrR5V8hb84=;
	h=To:Subject:From:Date:From;
	b=rGE0SJ7DIEG5bReO4szYKesSgFhSM/UCG1SZ2wR98JMAm3zkTuMBNehrzOhAL6Ng+
	 rHINhmH6VqaTkFi/I+ESP4o1Y1/b3l0ufYDmxG2foShtuY/MtDXjs6sUmS6d2EzQyo
	 Coc588MZ0420LZGsa6OtYvlwOWrQYzNDygzv1BUh9aXTvbfIvF96qs7sDCabaDbtDV
	 wYdqgKDFlVzilowoak1FYRMAO2xd6nQKebgGfikczk5FU3sxVK24puAemV5IWC371g
	 HS+kzAq8Vwj2nWCc3ggk2bE1w3453wSulpZveKCt6MEedIhYvNCre9Y61yy5rr3vLe
	 Rt+xG47ot3kFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C4C0C3DA7D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259068743.17522.15504930981378084142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292913127cbfc0b4365a20bb0dd29eeb57e0fced24ec6615a1c780bee54ebb9d
Date: Sun, 01 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672590687
