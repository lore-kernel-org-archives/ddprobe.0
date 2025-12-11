Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257BC27B4E1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765496574; cv=none; b=XLDo1yKLHFpWeu2aM2UhRd+EdYm/YrYOf9hNTQMbByDxznxnuTBDpGI5IgYipPCXatnXk+48wQfmGVlGC/Qz5xuEQ04y0Egn/Qr4o6+GHDcOWZPYq5Tok6zPH7o1Dk8fs2lg+B1W7eAmaAI35W1SHawPWhJsE74uKLVkSdVbYqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765496574; c=relaxed/simple;
	bh=itsxgMwEBC9N8Qv/8dQPX+njyVg9W6BFRbYU8wRLxjQ=;
	h=To:Subject:From:Message-Id:Date; b=s0ae6trYZ3j3OcSmQeQLAmvgq87JsVph3t+QpYtuf02bffMqLqB0vqVjPu94fdXZ3DUmrNG9jarngwLHNaYGHC17/JiPmzqL1nRbrkB9ERpKripexOvId3ZR54LVdOK5yRcOvhunxluc+1+3D/QYCkPA646KrhVw2HF3WQ8B3yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JngcwRMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JngcwRMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B9C113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765496573;
	bh=itsxgMwEBC9N8Qv/8dQPX+njyVg9W6BFRbYU8wRLxjQ=;
	h=To:Subject:From:Date:From;
	b=JngcwRMzX8ulZ4CjSVyY6nTo5WMsOxcDJrh3CouZhExnMk94aDHWn/4sUTRJtq5eM
	 sFodBhT9nyFeuMW/83EZZyu1NpbsM3havOdn5YX8Ye4oHkK/oVVXdAAtXvktPHiNsx
	 UBvfZGiz6l8h87QKCYm9PhyVHJVq/EVKyb1itWV6fQvkgKHnVkrrfJc8N7vS7tomd6
	 rgOy7N8q9E7zZUTDCUnuAFULHnCOOZT6TIGZwcJ9KNLDzxy0hxRa4zh6dDtg7wVQsu
	 yNkgKx7lJVMz2e6SEfQVNfk+tNesazwXZaPEAw5p5EHG9/pwm///zkaB2Icq7dRj84
	 7bMqI1hjj55gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9536DD4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549657358.15861.18344902981779153530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb11bf573c40256ad6ceef90a8f38bb342661a22f08170068ab19b561f7073b0
Date: Thu, 11 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765496573
