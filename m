Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94AD19067C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746458993; cv=none; b=B0svVU5dkVw07KBWMW5e5nwI8i4YGCEOfRvcwOCODvDBcal9U8Q4ipp49t1UThBmpaH9uBMrgCHOsRBMyLVKiLpgCBysCrx/RpesllPHxJNPOlcBDPzrZPxa1pxgeO4vMjBQ+TDSRXTfykSNCjQ/WJiyRGhUvgC87pdU01hER1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746458993; c=relaxed/simple;
	bh=tut6WrWwZOnHlY6FOjv+Fq43UJaq0BLQOoXJAktrHX0=;
	h=To:Subject:From:Message-Id:Date; b=ERWXS+Ldb2HKxRa3gww7WPPbnvVyCtMmrRDbqgv1lM2MP8/073Oe/Efvlar+t9iSNX6R/gOKXhK4om86cZ0jRAu5h57t8GiJemC3aumma/TS6JP0yfZQL69jaV6ddJTkicII/mASR+ZTESPvP1j7XO5qXHwPDieha8XpZDAVK0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCLGJDWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCLGJDWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6EAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746458993;
	bh=tut6WrWwZOnHlY6FOjv+Fq43UJaq0BLQOoXJAktrHX0=;
	h=To:Subject:From:Date:From;
	b=nCLGJDWiZBz2wWd+CNXXLepfvVorUBtyJByFC7U5m9oOSaTM7kZG1Sg2odMNZ92pp
	 1NUMWa2EAIjoEg+d+ofZnLPVJCuTkI4QpetOkfcuG1R2jHgYGYPM/f65JtDFvODOcZ
	 lzrpDlRUYrzMwDz7jwegE/rw4fv8wdkF3Nr5qLqY7L+kd1o6yk5OQn3GauBHh23hBI
	 Rq4I03e96K+B19UEr/l4CevryOlQWcDc+kI9hgCQp2n+Zmk/k/BXon04qvIinm5M74
	 1A/hCJ9rPTtC9bzU3S9u/QBN6gG5mQI8hxFa6VhXbqQJOsTlJvBTa1qHGIcz+qS1ap
	 GbtJJNaRBdDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D4FAC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645899357.23325.5983468351556701229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191c3242303c67d3e4813e134c732d4830292a024b160c46c0b76309b17862b9
Date: Mon, 05 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746458993
