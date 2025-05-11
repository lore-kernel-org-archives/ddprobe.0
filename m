Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91B13635E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746979194; cv=none; b=VMl7SEgNfxlm5CXmVkAlxfw3rkyI7U5omrBFJFQmW1JiQ7hEfB53akGbXwKYXWvOgapTHsm8PFXrOTW23jVcKbR+AJNRh6jeSFNR/ZPxasXl51vMgCc0YVcLPYQC4qNYzRFbuiD3fcF6aFbRIDjUKPH5JfRb131Ub/1GM0eJcgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746979194; c=relaxed/simple;
	bh=UfKYPaTvq6Nflg1P+efFbGPpMfbQzak2dCCgkKfIc34=;
	h=To:Subject:From:Message-Id:Date; b=j0QvWAkdxCxs0TQ+TB97l+1fh62j566A7+Esocqoz3oh0fPw/Ro5VX1A7ajY5dN7KBeeesbKdnFVoaauGcj3AIhTw4TIGMt9nPFEWIZS0AuVFhJ+vlHZnIzvHaS0QbSD+RXZXdXqRw1pNq1Ry3QxHEA6233BuzZ+2uEZmQFiuWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q62cKe9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q62cKe9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BDC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746979193;
	bh=UfKYPaTvq6Nflg1P+efFbGPpMfbQzak2dCCgkKfIc34=;
	h=To:Subject:From:Date:From;
	b=Q62cKe9OKECV+TDKXgUUUzG4CC5nSc4te7w1VDe3qZpfVUB7mVPx+XUz1Gk5sWuHn
	 sPVfshClorNhPCNlF5NdiSViuIHb2xaGw6jSQKLgkC7aowM2JqhDeYwDpJCNubo1JH
	 BS4HI+XXQTBQlUWNgZVIi1CypZMfgjoJ6BPL4XFMnLzBsdO3j5u4AXlltQ4qBxOTt0
	 xwwScGvqsxtMNBy/CXigYN7JlBajIfdy2QMfhCwMzvMZpwz1hErML8iaGMrriUzixT
	 F/hmkPvBnCF4RYezBLzbxc302FLToRmzqKBJ027RbdikSODO1enLA9f3kfkCWCMhrE
	 ADeDgWjvL0AzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E414C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697919357.14653.13261909716572016214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e128ef026cb0257760aa0dfb31996fa80a2f161842e48edf8475ac270f00418d
Date: Sun, 11 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746979193
