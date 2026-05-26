Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551D63D47C3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779838954; cv=none; b=Sfa8xvJwoik38nc1erzpLCO83huadUH2aaiHN2oNFy6hQmdVFvCLzkYXGSPIhARvGMzaYPB6eBTSjPZkXQjcnJtby4HCgkvDlwIuTjMGJqRqVv4jtPMkzOhEtDGjDWGXmZMHs/WrVV66AfdOCx33s0n4zcjd4URTxUBT5cBcBe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779838954; c=relaxed/simple;
	bh=LVAZ16Ghia50IxoIMY6jaKXb1Q5S3wgzz7qlnfmjQwg=;
	h=To:Subject:From:Message-Id:Date; b=qMpitEYJT3gdJ4Q4izpro8Ee9t7/53aYwPaVtJ08Ob9Qfzlbw0LJLmyxfjf4x1oB/1WEiUOMhXkl1ejug1eahouCkv+lwRBQxo6wfn8HBrVhUE5APd1cUTF/R+4i8KP4GWeDSdDsvRHO5vAQgbjEYwo+jcGgyGIcYHssoj0Dj0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHf2UEvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHf2UEvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4609C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779838953;
	bh=LVAZ16Ghia50IxoIMY6jaKXb1Q5S3wgzz7qlnfmjQwg=;
	h=To:Subject:From:Date:From;
	b=aHf2UEvDfHhJSGsxzxxFB6vMObIja9CqIYhMQdBV1XcPOlKnZdKdn6fmaWgyjNQJi
	 6ni8gKXaQ/lJU8SvxdQVioGWZ7FH043ASxiYJK7FoevuU27c20UNdZTkPYGSmQfwIj
	 5jnJHRzcCpVk0OsjVrUtx+8f7sYIWRXQgyxPWRIi48w0akH+4AiBfZXDWe5fMV/yk4
	 PnC6HTEUZ26o9kdOjYsKlkVQGiW/jxS0FiwT8svuXvpzi28FR3aOgOQEJnBETKC0IT
	 ylCnRt2OquvP+CuQGnB2ebnZcUR+1zjRQyf4kgS5Gl4KNjVw0cA3cNrpBQpwdif93N
	 2cvmWATAiAxUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F3CD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983895368.465.10185423733369775769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2174212df79921bf414bd8dd71236a8f7f710808dabcb0e4e75e3ef8da3c2fb
Date: Tue, 26 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779838953
