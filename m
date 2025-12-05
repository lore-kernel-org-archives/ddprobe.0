Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B732D839B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764951774; cv=none; b=mzYZoMB59jvR1ZPxzAVHEsckpxIPlUYFV4nOCXZagmow6uBOb1FFxFP66p4f9nSLheqJ8sflIkQelB+OjerMrHOYE56XCUOKHBa7YuDr9PMruq9S5eTEX+WDMiN/CUb1zlOPYbro5dKJXW9Yzj7wwdBunNIetStFJh0USbapses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764951774; c=relaxed/simple;
	bh=Ut1+oKoXOdsHxP2PmwJGkHerJ5v3Roz3291fho4Q35o=;
	h=To:Subject:From:Message-Id:Date; b=Lv225O2M21qCg+Ngg3b/3XI9qh4PodkLtgYk+LnQb4kSBUQqwKxezGE2v22ySLCdHmGVPg9fh9SC/zGZU+aF5ym36/90het9fPdM7Ijq4eyj10P4cytlMn8S3YTMXw90nWlld+3FS9FXNmAP9TFPZ4wINxx0ZNVegWLuJqC4ZXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mokhJ3+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mokhJ3+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4967C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764951773;
	bh=Ut1+oKoXOdsHxP2PmwJGkHerJ5v3Roz3291fho4Q35o=;
	h=To:Subject:From:Date:From;
	b=mokhJ3+OZ+3X/k1znD0xyOvsxHReSqx9oirS48tZDJBShcY2lzu5exuLIpCMqgbVS
	 VcBHwRxA5V6IXOvTCAC4XjmbQRtPtSRVI5sPs7MmWYkWOj3rzcDPb4IvhCVab5yy40
	 QbSzvCYOWrlPvvm/M/6TucXbCYGr8YixpFpYU2rtTJ9Tk3wKc/RpmS58vSw+ja+xO0
	 Ys7m2KPpr1a22QZy6ER61cQLjieCW2e+TFOxsIE6knfl8QpYUdJzkKxK4+xOG8SPxA
	 5JGyWHEl5HHdPLnX5GGBa8ERM0piAKvLAQh2gNhaUYWd2PcNXoKqjmVfDRIL0e/3Cw
	 UUAHy9z24dduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8BD3398B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495177359.22742.8239075974007388008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3235c1f6de95b374d71a0123541eef4727176933a083bb67d47afcd4d2809492
Date: Fri, 05 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764951773
