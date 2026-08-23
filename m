Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD2035203C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787515235; cv=none; b=efU0dKPWBHGgT8gHtTQj4UHmaxMPmMjIyJ9EM9xoRJ5woxJQ4qUQNxDE9+q1OtADpAyZE6lmCVS7XlrXpiW1LpCheKnXooTCPFDHCGtmTgY4hQ0oD/RE4Ww9xye6E+3CT1Bh6L9qVuBiLn3Sg9Yy4d4h+jt6yu0zgxPAcclvOFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787515235; c=relaxed/simple;
	bh=q0GDg62Vz+olA/qafwB8b3Q8vI1n87M0CSeJp7nZuf4=;
	h=To:Subject:From:Message-Id:Date; b=DDmn5rC9jBG8Lp8Z6SWoa8EZnZITxcOR5ggcdLRU0m9FbpS33L5+DAOhIPTAFJop3s6cEp8WplXinGZyRAYwW0tpZpG1MJgrS5WSr7Mbn2M3iBb6jcTgYie5HLB6ZEzUn2tlrOwPqEYxq9kq7LNZ+edWblvo5iup5LhodAS8qic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwTqj/gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwTqj/gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF44C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787515233;
	bh=q0GDg62Vz+olA/qafwB8b3Q8vI1n87M0CSeJp7nZuf4=;
	h=To:Subject:From:Date:From;
	b=CwTqj/gb5T1AtKtayzF15DHL9BDtZKIoz6/NwbnIqH07q25zpzlo3wtD2X3Xg2/ET
	 rGqQrS492mhseo9G43uBD5Z2PVFHv0Zu2vPj6YPV8n/mJBUxrLVCE7cQzjEjCbDy0B
	 NsIN9RpJjIVylTP1yRyklnJDlmkmXOeI6Timj0/1zKYhUr3n7MVV1xoATxSP09UcEB
	 d8B+EYuMCIS7l8HnaAyDK+NxxCFpptk8PbbvQpe/8ZQz+fUcntaP4uZgMwHGOSWb8L
	 d9C0bI0BYPkDLii4pDD//+TkweAg+Tp+RYoWtz4QWOB8Bl+qcQUIaq0CUq8KW19SGF
	 g7juOkw6xNqfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD05C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751523369.900.15312083336623642799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400c78a6cb80f0763594a71d3692f3e6dc66baac8019d7906a5669b26eb8c393
Date: Sun, 23 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787515233
