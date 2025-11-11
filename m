Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBF6315772
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862993; cv=none; b=Gn38j60c0v9CHbWe2HL8jW67cNyXHcWZuuvR/8Skqd6fBAtnxvXvUFJm5/xUdkW+5gigKFtTT9MT5PjZAJd6p9KmKsFKtsQJASYbPvdQg9U44sI85nLSGXTIDYIIw1j4qrCIuMXkq3KTDWmb7mXVfqiisoxut4bGwzgeIi9aEx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862993; c=relaxed/simple;
	bh=sLBWIPYP4TE1uRwJm+vQrSZScjmiWxX39pQfE2L1py8=;
	h=To:Subject:From:Message-Id:Date; b=k+Rrqo+bgQJ4m810AUKLA49Lt7c1JqZR2evlUlUEKLo/899NE/EeP3DEdGTk5g72ybb5ODh7wwWSn8Zl1Jdcy4Ukl1lINSr+0RhIazTUUzbCufJUkrEgavjvWf+06Bc6tfH7tw1d02sZiaj/OX0GUa2RPog11unAEroU5+UB+M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivMIToZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivMIToZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6416C19422
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762862993;
	bh=sLBWIPYP4TE1uRwJm+vQrSZScjmiWxX39pQfE2L1py8=;
	h=To:Subject:From:Date:From;
	b=ivMIToZMJmhdgF7VTGxc0e/yhbFnZKQznq8pqXfPWLsYcPivMbN7u+5ID/XMWJlZA
	 smHNLMqftz1LOybnznl2x4Qn+BhadX7rvzp+nCcYzTpj58UVFa+fwJQVy7ELwbExpN
	 HUggEaLOOw9sABjdmnFzBa9I0Bcnyk1ywwUTxTXrOtjGIznONilOVPgPaaygXCQcnX
	 EL3WjNv0Z7bOGd7sHJyicNcGKPehfskY0rLkwdb3KJ00xjfRybRs8zR1tPFCQSFZ5d
	 4rhzSeg5O1tKD6JAY+KMYRQPXEg0RVu2i3MLe3K9uTf1EH30d46W/P5BerSUueHRNQ
	 cWGFZeJ0nP5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A60CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286299359.12319.1998826787239379925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86022b59f76d7a14abd50860c19d12e8fa47a2a841be785b922b12744c92057
Date: Tue, 11 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762862993
