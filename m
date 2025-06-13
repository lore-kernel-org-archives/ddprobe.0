Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D0F1A76AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749841794; cv=none; b=bb6U6t3Rl+atwIBZDVvtTwart4a4srDmbPdnF84LNfI2Rcc1/oQ+s4NQNFt+WhRX8pUPjSfApiIgmNPb+VNdbyl/94tmjdhoadiligVilEx6U1oGViLz5vre6NtE7dy1om66VBOP4DqP7TopHO71fPqwAM86EriFFn9pIAMAXlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749841794; c=relaxed/simple;
	bh=9yqdR/8Vyu1vOnh8aqHI+CPX7/1YstIG4VXwPmOZSCA=;
	h=To:Subject:From:Message-Id:Date; b=Jxkd5tWZ3BtfrEYjDQuT7kPTzBGMTMdvCjT5M2lVnmVqVNGLcKRjnmCmv7o0Bzcadx5mxB4A2rsoQ5UXoQWdEdfFpcLfq93C6yyirLUW+kc2kzWAtwm0ZuH78Sw+Bxt/A4F2Dxgfncflfi608+aakRKh8NOwLKScJFe4hlRw0sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9ruI3+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9ruI3+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749841793;
	bh=9yqdR/8Vyu1vOnh8aqHI+CPX7/1YstIG4VXwPmOZSCA=;
	h=To:Subject:From:Date:From;
	b=G9ruI3+g93Vlai0kZxZ/dzm/4HQYZ0RvaI7Hw1kFkMZey3UkXIQBcWuW8ZMcv/9Qg
	 CXH4IDUQxCpyWWVcLmHv811sw/DI9pbFl7jfnNNZx9xnJazqpjwT06wbVWhge+ZR3W
	 l/YgJ9sf/V31rbHVS5YM5EpvC78BIhvh23RXErIjkwC6XVtUSiJcSVXuOy2Y2NWYgQ
	 a1rZTg2OncxLuqxBLY1g0ZoZl8w4/4m0wfZ0mfOd/2lX+DmF6TYMu6TuyMwydhC5ZP
	 Xpkr926sxgDqrWXEto6Es7PRN/3AIfRbttImyroxGcvl++gBixgQVfTWR/vJGna+qc
	 mAFdfRjgOT2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54DC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984179357.6594.3189962027228047950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bbb31a4945eaa8e76a4202c09a28ed6532174b9aad6e75166cc8ef5a9fba65
Date: Fri, 13 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749841793
