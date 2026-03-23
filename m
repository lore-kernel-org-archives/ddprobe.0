Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C96280335
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774281894; cv=none; b=hqwTCrGFLLcDLwwaaFQe+vk6iW4/CYmm1JFV04J8ONe25dBYYCY3nMu1en0zPOma4PeK0DYOaGu3gYRjHP0ewrQdbV7E6Fqtlphp5bOO9ls1JyUDhS6nP/vXg7KhFc+0D2J6VORp6Y7QRzJ1wdn1oiTbhP5kMLk7JLGTFJJRm28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774281894; c=relaxed/simple;
	bh=Ya/fJWv+d6Va119c3bbZu7PcocJHaF6dmLlnFOE46x0=;
	h=To:Subject:From:Message-Id:Date; b=q+SXqNae2ZwCt/qqUhMRTLKMYT6Kj8DfTJG6/YIuTRAklFIvFt7e/Q6BhPEiip3BLOZhNqKgW4vnLqc/qp8XOAJZ5UQE39u+O5rTsDqc90NKD52bPvkLIA/m4zkuOOoSe7LXY7vaaKv3RG0VZNg4KiLPbeILVvmrI+9CUh4LrYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4EGcnHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4EGcnHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD3DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774281893;
	bh=Ya/fJWv+d6Va119c3bbZu7PcocJHaF6dmLlnFOE46x0=;
	h=To:Subject:From:Date:From;
	b=O4EGcnHk9K86yaDRRN2+nge6KdSJfLSEVO5VpyodMDpIrpUCLtrrKxwyMyTZv05/q
	 cjxQNnrWqbitb45Xxlwrii9E/Q5cz/hjQZVaBXkuswK7lvZwGBVbWSpdQrGraE6eUB
	 GXdF9TKYN27azVLy84/1Sndjo9gJUs0l9Z8yNRAtM13RZVnlRVqfb+6iWy7XMpr/yR
	 hBQvUp1QF4raEWPRR57rTqLNgZPdwQa08cLxp5C0jFTDkPtNk0dMj2t0wYnB3ar9ap
	 HccezxM1KftEqKyGAXngpr8g+n9K0tF4drYcwsoqj87Pq7pQomLZtRXcK0wLZ/rfnu
	 eyjfQQD/kwd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925DDF483C3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428189359.18892.15356027718564372183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3e08118d6aaeb2bc56500e5036b6d3c2437cd0ec2290b2e361239caf6f7950
Date: Mon, 23 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774281893
