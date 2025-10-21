Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859032D0D6
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761044394; cv=none; b=Y4/gfrNaXsU0/DoFyvSOnGLux5IuYm4uBfqYhwVvO/bPiLP7tafrOgFfst8rMkZNZf47FLtuTpBZs6G79wmSflSP1Bu4tDt3h+cAOrFOPMqfi1/BkhljOBCPhVbbfNXiP4lYjDv2xA4KUMeJ8ZVwj3FEN2SBfZdGKvIJt4uTcyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761044394; c=relaxed/simple;
	bh=ibK7HOhJjc/JJ3CzOAS3q4tEjde++IY8A0d0VyoaKb0=;
	h=To:Subject:From:Message-Id:Date; b=NUUo1jctXATciaUmSRijl0P/3qfQIeVcxmI9eE8NUD65ULaLVp0zfmoVQwBMRfUj9Ab9BkG9B7rJX5SYGEx+sJMCQksyxwWGx0BuEva5csJIhJIQ6qPkRwtIgj7CeMuD7tzNTpfjfx6hSIHWCaGFRFLWzB4hPxR4LKB8tX3MUXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD1j9kfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD1j9kfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC1FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761044393;
	bh=ibK7HOhJjc/JJ3CzOAS3q4tEjde++IY8A0d0VyoaKb0=;
	h=To:Subject:From:Date:From;
	b=iD1j9kfwhHcnSsxhXhv6GfRCxawAdU+lwoIhRrPG+qAu8zFmxKtdMkxBo7+uvPx+N
	 Z+14cNy4bI/MnW90rTmrWM1yXSzikrViG8XtNJGvOq5vTc7ETqPGxLD0ciABt11qfq
	 TML68WDefdnSeBupsm98gHT2ZJaexkObMgoNIdiA7EuOsfvG6U8AJtJgYtiAk59RYJ
	 FTQO+4XvjJOrpi0zge4QYQF6U4v20FJCMWOnn1e4vhmDMCBf94C3ACx9FwA+5QIxaf
	 rziYj3+6X7zqVebib5Smw1e3UcpVjOYkcDqGijG1kq5OKhnJKv9U0lct+CMIqx7boS
	 swewwkfW4I84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93000CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104439358.15487.8788976313588864524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acaaa6c49b468f0fb900224d380f0bd833f57579e6f4d4de1deacba0f3957a3
Date: Tue, 21 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761044393
