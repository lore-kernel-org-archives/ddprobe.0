Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3890333556D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768881834; cv=none; b=D6ZDWQ2mMOtuL8rizbfosNFTSrIhTg0Ghs9swzk1SgtnFALicna6L+imM+5OJn9jHSAIYO3pPftWGxjDHzUWvf5e30uSMUZaGE4+FkDPbryEf29PIQmt27UCfwSJTTgGETzJWdGLGb3OJTgMBBqJ1l3MvDbI5MDGkPDT/W3h35E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768881834; c=relaxed/simple;
	bh=/bMNvlQDvX/wOcEZbWgnk5d1LOcf5gjUuvKYUlliX0M=;
	h=To:Subject:From:Message-Id:Date; b=F6cCL31WYX49vN0b6rAAoE5aXG5ecrdiQGeBEA8vZnywMQljh/mgjTtDRF9oCPGzEO7RwQ7XkyMwTRrTMM+sAlObBALWCSSBxT3n3I2KXcmqxtvvmGIzLss7qOusO9IUa1HSZ/52zOVgh6jGdQx9EKHGfeveoswRa7jjALepdw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA8zAY5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA8zAY5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F36C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768881833;
	bh=/bMNvlQDvX/wOcEZbWgnk5d1LOcf5gjUuvKYUlliX0M=;
	h=To:Subject:From:Date:From;
	b=tA8zAY5tCUcJl8uxOvZll97BWNysDKpuEE77lbRfxr9DkVooTkwNJTqZhhhWdTcq9
	 4n2QzVr36nIQo2vD5yUytyhfflmh5d5dbH7Yfcmon60x3ffNMLjtt6TXbLeEhFX+qz
	 We+hQbi87esLgjnUmKXUMTXUdGJvjyU0gV5in861eW0DlTyFvxm6LAhVgfy95dPmu1
	 bXubmuWQIFlM3gWZVHB+JbmjGqoI7xWgRnpXUEz+Vdp39bvA3TDlfPU/BecbSyo4fg
	 XwRuC6lJYpMz/n+wTgk0gLiJsn+EREuOzI9va59WdsjvpTLKO9QVu3MxTofKSTY4Lq
	 9+Ydql0Bh8zXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D24D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888183358.15429.8759499643097453859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2540d28e52c23394bc139fd03fd3ceb952053cbe389c16fbc0591d5c2428ab52
Date: Tue, 20 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768881833
