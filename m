Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8035C18C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767978834; cv=none; b=tgTtH8HBZiHTwC/o3TLNn8b3BIiGPoerKxdHCgHV2ja/X2Jakpuoyl9/nQrCqb4j6rNpfQp+2BSKrHoknvq+Dr5m4FAjGDDPX2eUoUSGOkKgLzqWmRtJCWI805zs4GKx+2NzH9JGPzVAEGz/ohFiBnYS/ARv7dBQCClLjgPITHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767978834; c=relaxed/simple;
	bh=peA4ZMCDTVJfyLUOYnZYX5It2/78VvBcdUkZ3OPGH2c=;
	h=To:Subject:From:Message-Id:Date; b=I/1VCDw+HeI26Z5ODu5poJLZdX4bxGxHqeZhZ+/E7ELFgiOsVagnowWFk0yTcZSVXG39GKuI3CprTaZMof7eZ9/z29d+q6/kgC9+2mjHtIbKgEAMWJRWPaiqGX8S3Q/v4SRFzTJXW4XYTNoEOlnAQRgqVH0x+Zp/kfPU2owlnhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws8rJwif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws8rJwif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767978833;
	bh=peA4ZMCDTVJfyLUOYnZYX5It2/78VvBcdUkZ3OPGH2c=;
	h=To:Subject:From:Date:From;
	b=Ws8rJwifb83pWhvm4zVDOpUx0b54wxvNez+vBSQ8nvFBH3x7bqsZeUR80XnC8jq8N
	 IsF/BnzKmO8OqAi6I52xKaEv0E6zc2Pyhv2/uKNMNQlfKre9P54NwsJySx9O+dBMy4
	 tpcjoojHi3AFdzbdOqbYOZahfAR3PAUGnd19Rx7vvOrt3gmLfcVFs/vguf1adSdGA/
	 umb0pQYXAgM4iE5rKEg6eev7YZnzgyN8uPFvVqheDHRsbC0fkUyX2E3160Ss1xHzma
	 V0FZO/p0H/sOwCgjGEtvvQ30iTUbLwNp85vKjXxJYl2C38ChPUNzc+vfB+yp0ecUR0
	 0TMVr+ZYv0RSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062ED26D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797883358.8241.7092329787349235618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b3716fc9ef57af87f45450dcedf1565b696f789568ef7053d14b3bd869ca0b
Date: Fri, 09 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767978833
