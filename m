Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB0314A0B7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746420594; cv=none; b=EwE6x+U1tKtjTJBTQSHZU90hBYZ8PGshvl9NksSVaKcuqK9isi9uRA5gElTx5As1uIliZ4by7ajLFMeR0qRN0HtOhj0bbvepBzpMrbhPJ75z3KPsv+nTAq2LMjHnrVgqL7Ucb8ksHaTBcFxLMwvPTNU5fSvjCyCgYQJHQERcc3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746420594; c=relaxed/simple;
	bh=7AgJaN/yUNNkM9n/cJgHuKWLCS4iq1Yi8fh3CzWdvEA=;
	h=To:Subject:From:Message-Id:Date; b=Cba7lESAwDT4pHWQXtEwJpWhI0SoFs+t9vC2oM6oYfn4YxNZTnSpM8/EVc9ig+Wa+pYtfoVWE+7NSlhQsCaI7qZ6WYpdgCMHCcTcIwSyIu1P48fRME1D9xyDUZcAge5Rmfij7mfs3GJuoN6PqCWbfwmHMJKlKUqVIOo1+FoL2sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqDAuQD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqDAuQD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6277C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746420593;
	bh=7AgJaN/yUNNkM9n/cJgHuKWLCS4iq1Yi8fh3CzWdvEA=;
	h=To:Subject:From:Date:From;
	b=ZqDAuQD8WLqvoBTB1B7uqbb4FnOCBVOQS3kgxPQz69ue2wKw7xh9vXTUf8/VDx/l2
	 p/zhbzVoRcZAocxpZaQU5QhmF+c13LTvOU1loPK/evlELFddXwo2VMVH8waMiYkIKl
	 nGXQ25EkswAtxqjP17jue/BzJt1zJ5uQPjPlfvt0JdTi9JOxeN41y7DSyUINlEkyQP
	 Sdj49zhsWZYEZp1HL7o1/Znf5qyWHvIEEc3BpmVph9NS7bDLx+lRd6aIdERw0nQWCu
	 fThDaFwssIYwn9XOx4EoZ62j/UycNkyvNCuUN1BnDIhRQPt451vTDOyCboMaMt/uWs
	 ErEV9xKzHwQog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CAAC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642059357.21436.2759275146901135041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790c39c31b3fed1ebac893238f76227f2270572fa63dbbdec10ea65ea84fe9ac
Date: Mon, 05 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746420593
