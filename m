Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EE21C3F0C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745874593; cv=none; b=K4Pu/tzVbPTQTk4qAWwjlSSUzoR6fnaw7Zk6pok6jO7n1abvKcRr9xAmdWj4Xz8MUbGYSUbWXVDgYozWuo6E7Dc1Fu/2KFy9AZneCcnEkp86e8rI2vPd45G/BCNHd6bmItxd0oai/+dY7EPKKjZQM8vXIjZlhRMrxXJ4bDLxKWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745874593; c=relaxed/simple;
	bh=wkoJHHeFBK6/ig92MHWZBFp4iVkyiK6Vxx+HZAhreHQ=;
	h=To:Subject:From:Message-Id:Date; b=BYubMuFYQJ217YqTkCss/TFVi9x7+gNqI4JC/ks6wX1rmOSq4G8uWQx/53gK+iFvOlTtJqWRBrHXbc444pG1gX0zf2w1k5EzJ5+ORJ5ZAKvBGpH0GyyqqpiEhcC4vhgoBZ5ZKQmYUwNXBgGohz7SImNI0urQWSWLbCqLGr0EsB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NErD8/20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NErD8/20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3167C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745874593;
	bh=wkoJHHeFBK6/ig92MHWZBFp4iVkyiK6Vxx+HZAhreHQ=;
	h=To:Subject:From:Date:From;
	b=NErD8/207AVl8FnNOmcLUcfHagYg+di7LvL3qqb0esZpuVnR2voYv8KtRemZGinCu
	 3zvFCGmmuOBeUVlk6qRquLuM+4TMYgKyzHMzM3itDoSD8Ij+V8WUqkJnQ//e2xNr2F
	 tT4GDHcoq5Bkpj7ahIIShoPgF1S4Nxbmpn/pO5PAwfylOGtHYI76Ap+QrIjAFODPHC
	 kWKnEHFsIc+H0e57TheZqQ9SB62FRldlfrfD+6cgIwPc+8ToCFZTE6ZqAA0FGWj+o3
	 K1N4f+ruydnrR3Nh83rwXHxoqIlDlwgdG9kY+DZK5gVoWsS6A2yBpszhc6mWzDr1Hn
	 3C9Zh0s9Fff5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E7C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587459357.16155.15171902388485591844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533880ce0af5911c956cfc38117be829cc54c8313d8ab81f1b9d94593b63652c
Date: Mon, 28 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745874593
