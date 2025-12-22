Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F4D10E3
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421834; cv=none; b=Otcep+Re4LYN4Xr2BQkxD0VUA3jSCYw7bGHJdFCST0kKfjSdkAVkk+aYCpjlnnpBPXQ0bm6Rap3GmjxRw3xrq4CfCp7ZU6/Y6aUimmeVpuyROatZss6I8O8xEUMg6v5p0gsdG5BzILxvQONuOsdwPMmN/ru6xltla9rpeySAjnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421834; c=relaxed/simple;
	bh=jLfKelXOAuyyf6+SVVYwFJhd+8w+ixOi3bdO+hQChuk=;
	h=To:Subject:From:Message-Id:Date; b=Wzt24cLxaAGXK8+PxtR3a0cbzL3fnE5gjzcfeu3+zttptbN/Cdmql6JHWlMhqdBU1ifoPfIkO67gWM6eU/wtL8bCeMbqP75Z1IrOQBE3eyFapXmtciU9j/I8C77LeNsYXRdvRtk02kTxxS0pJAh+bR4o6FTZ3HX9xoddi0xMU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE+bJ8IJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE+bJ8IJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E01C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766421833;
	bh=jLfKelXOAuyyf6+SVVYwFJhd+8w+ixOi3bdO+hQChuk=;
	h=To:Subject:From:Date:From;
	b=gE+bJ8IJa/JNEOuZHcM12hg5kADm5lIjSjHQ2WxR7haptXL8V/e5P4zBzXVxo4TRm
	 iWSACTMbDZJ1T/rMKzKPbA6bwLeH1vv55bOVqFAnchrzh7uCS6LMBxQv2vKDvQpmwx
	 cAL9w6buh7HRTT5ClSf2TKJZNvkjJ1tCzIRj23iywGwiYT1j+xUp1KLIamxEpVbmAy
	 qgCTgj33RaHD5Jai4ZynueNNh9D5HViqxIRJ6fV7To4VXGkaVAQCbR8nux9Kxx5HCu
	 31N8vmCwbeOtytSdrdkmU5DA0Jo8caTHA1/vxBZ5Hi9PHXkx+T66odgqS3EW7TqdDg
	 0eqhzb49rAkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D33E67495
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642183357.27394.510689042181702454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e520512fc471d76cd5a29e2a42de44907cb2011bc096bb764bcec7d6f1764a5
Date: Mon, 22 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766421833
