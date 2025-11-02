Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECBC1EA7EC
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762117194; cv=none; b=GEJwAMAd6ondRVOS7ayVFz8/Qn33V4H1rmGG/qNt0w7sz/WbJwmB1c3UxeO+AjiaxoNiUqZJsqX+WMycFgRQiea6SOzh9aYwEdSAA03uZEd1qcWDQ8Wz5wBY4vxMrt3RsRXGKt3FWYlXCAjFYFn45vczFB8qxe8emm6v4UrSKWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762117194; c=relaxed/simple;
	bh=b1M2mAJ9f4g53msl2hNg3O/oivr+T0AoUAvv5wYFEp0=;
	h=To:Subject:From:Message-Id:Date; b=erBU9hj6Ycy5SNXOVmmS/h9EESGCk9V8blekxGGjvd3KBug9MBcKKyVwboJKzx9SYMK+8TvRCCpZNm7ZVInflIXanwvwUciRAIZT4rKvF0quHZPb7j+rMml0I6HWYdHd5uHJNo6nAsF2JW5rjoBL+3fJ/y2797UUvCQ7O4tCB0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSkXiP6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSkXiP6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DAEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762117193;
	bh=b1M2mAJ9f4g53msl2hNg3O/oivr+T0AoUAvv5wYFEp0=;
	h=To:Subject:From:Date:From;
	b=MSkXiP6dJM3SCF90yXoadE/DVGw9gH3SG32Q2b9cMWpvnPfiNG1PegEezY735CQ2L
	 4kY+HcjMXd/BAXFttEK5wOBrJGlN6wilJIbJMEJx2c7jk8bqSw3Cbu9cvFjR7TBPJZ
	 6nv2E3ygW7JEu4pd7USN9xFf6P42aDQIL2oNes7k6CmYfyq2Q0s2CGF3HalhA6MfSB
	 WPZexEE+o6N1M0Oo/0aSxvU8V7KJIkKkWcEhFOY8yicAaOihoCzRSvZh4Pm4RJYLan
	 VRi8FXnfUKJqLoFDYLrPSceMLwT3hszf3qMRTyY3n2AP3RusSMIBqgQ7pSlV66/vUK
	 OxqhdXuC+5V5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96080CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211719358.19072.6938289382142836404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d118898497aa9483facf0307767fb4adbb8456e52997239542ba863b86ad9ab
Date: Sun, 02 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762117193
