Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086AA59
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754336394; cv=none; b=t6A/At1WBozN3sqOrRxhHeOTeOYdO5rO4/oZg0GCJeUPiJrHzjxeY9dfCpfgA4jvHB6bXalJBsF08aBqWqDybN8t6zdnzuJS1DXIG/eYgUtwLxA8pbsdy/IiNs3bA2fx6RJuByTfcgWvhQrUC2XfPFnNSq2aameYkyCS4RXbnF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754336394; c=relaxed/simple;
	bh=OrF8cSxU/T92HHvi63KNPWgScGRbu4tM/eZPJuatqQY=;
	h=To:Subject:From:Message-Id:Date; b=hSlKHe9xguQSAoD1OxXTqKk2XSjWu9ygreHTaS6zbXPqMg0ueoMCWFBxI6SdZCefRl9rexBCrTpOurNmXZh0LNnHQc0BK5aBwN7QuVZ+cL4LxRTW7ZcOUe8AT/PNNAOpWdBZlZFN2EpV7NNb75mw7CTtcZVnRlW6Gq+3V+BdX34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaT6OLTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaT6OLTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754336393;
	bh=OrF8cSxU/T92HHvi63KNPWgScGRbu4tM/eZPJuatqQY=;
	h=To:Subject:From:Date:From;
	b=PaT6OLThH0iNTz0Vt1iF+olDfDHYRM6jdMj9VKOD6PTwizCLAbdHZ5jEMINt3FMc2
	 U+r1ic6zlatYjbeH5czxOvnIwjOkygLy+uCqD1XFY9W0J7NDX3Qalfby/DgKLKcQY6
	 8yBzVg/z9Gd2ROEpitSILifHJdBiD+J3MmOFPmK14J9qSrVrvArv5uJ+PH6w8g/C3U
	 ZqW2qbErzmDWOCc856tLUx8qqiSSawb62fcKdLfMi+knSe4paPiG3ySYaM4UGjfNL8
	 jriTnpuaI2jOjo1WP+dhiWRw7TtfX9f8N9FjiQtFO+sNjrYeHf/kyIRS7/VcBcR6+/
	 qyy5Jw2YBxI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F222C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433639357.17475.8234045848061709473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f756e585a08acbcc6d3138bddd068cb03983aa91962fadde3563c29380eadae5
Date: Mon, 04 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754336393
