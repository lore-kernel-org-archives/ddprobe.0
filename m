Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4820103A
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747204794; cv=none; b=jm4bPt06GyJd7UQSbXHjhWf5+xkUjCPHDPQ5PM1d3mQFzOUMvUz0EdDajnYS6jcj55iyT82yWt1nKTnFfeCBXz7vEHqFYYeleE+/eWZjXoX4kPUfxVlX00w5HRnzMdh5iFdii7CiX2JIN1ztDQ1iSzEbF+DdwTD97csl1tNOTjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747204794; c=relaxed/simple;
	bh=N5Toi1plOp0oiDwCfZ1+CRlUVivW0mf/QODI094wilw=;
	h=To:Subject:From:Message-Id:Date; b=kZXgV1xdpRHcQdwGqexc2X5uLD955zQepeRXjhz4HKHzf5SjiTyzyAeQ1bDuskyHHMFyKHFet/yknrvgGF8hv/5AQXiZ9KyyR2WKwqT+MD/j09Y34Hisp3nwaIFZocF6qHtQzsYUmKegmN576i+6GZjlS56gUrV0+bR3utmV8Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/TSLegJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/TSLegJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4074C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747204793;
	bh=N5Toi1plOp0oiDwCfZ1+CRlUVivW0mf/QODI094wilw=;
	h=To:Subject:From:Date:From;
	b=U/TSLegJJ1kUqHRRaQAMhkEsTYKaO/u4gOvZV8NAsq1KnLpR9neOS0hrQ7909ch9c
	 pVpVAk7HoPeNvdMzthqTAvXxhFK6PP0oy1E/jh/onA2TqmLQRD6L0NiRz36lMiabP1
	 egaCUcXSV+Zf04OGrh5jvCdE6kIWtp6cYP1+ilRV5SR28tAWkc71kVJMyZ2wY52lpf
	 9IiPpJ9BIjJZ6KoyqmngSB/QaKnwKL1eEiZzPYXenHKeqNBHYI289bPle78x3TbwhC
	 VCHDKDBHvhJGXx/0j5dY5B42k7pUo1XnEhdqnhLIM+th6+xCs4Z99WT00w5YQAoLYX
	 zJ2jLz8BzhK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB4C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720479359.8379.8754345063399070956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef287319ddcd543d8d2e184d7fe928af8e3c68c4636eb7c09966a06df8a45cec
Date: Wed, 14 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747204793
