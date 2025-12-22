Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D51306D2A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766387634; cv=none; b=CkW/3ZUsGyH6O2Jp4aWiz+SeOk2QLmxLyQX0dc2KwxCLi609ihh6ONxS86I1yQYX2yGDBQ1fiYO2VphrKPzUU47bzeqAL/OBJHRBDHOyDe2Ju4u+R20O9T62MalOJCxyqgxCAlut72qQ/w8DOC9v3HYKN6Vy9qFYAcUAbYt67uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766387634; c=relaxed/simple;
	bh=jnlvnxLifRb03N5HYntn99Kn1ZbGOrU3AlbOPGXxPjU=;
	h=To:Subject:From:Message-Id:Date; b=uMjIoKjlfs/7eqwc3EI7fEU0HZfUV7qSSUGO7LXibl0iCnK0AlfYHYutQVsHW/fewFR2RgMpSjyZjHrfyOj4rtvP7UKElsrofktl4MKL6W5nogOp2zT5r8HLYivtpQTterkQ72lGgvk+K5lQSLY8D0VsIOJDmzsZygh2PX8d9H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm6XUZp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm6XUZp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F814C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766387633;
	bh=jnlvnxLifRb03N5HYntn99Kn1ZbGOrU3AlbOPGXxPjU=;
	h=To:Subject:From:Date:From;
	b=pm6XUZp/g5I2ei3DIZn4RFC52o+XQVBlfEWiuuUF7tA/Tbjjn7R4L9sLcxLmPBHZP
	 n7+zyLgSM5PllWYD3khz8CgPrjBv8izlBRg3ixRJ8X8m4bdg4o0VSUct6KTVkKJyUh
	 AhwxSOMfsHVhKoNh/JcQnTlZ/tjmF0H5Ylfi7VpFfTKZvtu0g0oNwnJpTvHdyA2mj7
	 yL2eq835/0SCOB/l7Nr1+bNyDjc3djmID2JH6+Usup7JvpYepZ1wjIfRwHAy22N8Fo
	 Up9xbJDIDh+jS6wKZqZMRdBgPIbiuLCcLdK2nz/U7E08e/HmyamUXFxFc+tEOpz0mP
	 B74y402WqbZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90654E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638763358.10025.17341845437872885288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbcd418ece820ddb47d18eaf07ec35ab392c8b2946f30398882674af24b22f4
Date: Mon, 22 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766387633
