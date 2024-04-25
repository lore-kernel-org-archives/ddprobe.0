Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E02E17984
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714015283; cv=none; b=LFJIRMy+U/vrNWGUFO6KpnWjfLi9UpyuL0wMR9hBmWC9c3myq+QFdB+01fl4830Xw7pbApACGJvyIZGzCE6KBqI3K9/KzdZOqLAzBHmPtDbDMiob7bh8oIKgnSB3zz+DafHbyzm71EIB4oA+qWVZ+UTLtUwTqqnY1K+Ao2FprOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714015283; c=relaxed/simple;
	bh=QA6+cJY9L+pBbX233SXXTmV6X2hdloi4P33aWC1ss4M=;
	h=To:Subject:From:Message-Id:Date; b=Yv9J+kMvAUofmwFn6tOMI20pZNUFyTm/LYH8m0pvcnPR/XtjbDJLZjDp1LXDaGvO2cUWZ8bABy4UzUeg4C5EPDXejlE3U1D3wNEl8uQQ7SC28ODvgJ00Kfuai2NsMCRhJw+EUujjCGXUxZPuO6h3g7bU4iPMcf4ofjuubF3ciQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caxjq+Wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caxjq+Wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05FDC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714015282;
	bh=QA6+cJY9L+pBbX233SXXTmV6X2hdloi4P33aWC1ss4M=;
	h=To:Subject:From:Date:From;
	b=caxjq+Wl5RexOs/L+6/7QYclEheaxJCePuFW+hIlxf9p/Sxj8qpg7d0F6IBj5SCHt
	 I+NIcfhFRr8gXN+SURUbrfOx6rj39WzgOOBzK7EwypN/0fYVNv7TtLj2HiDfmX8UYA
	 0C84VYmvfcE/EUQ5ukjv9XmyGBMIt61+3V577627zMUUKIGzI1JDuE4fVbdKdtlFfS
	 bKRASyWJo9CO5fmNSXG2AT3znLcppsweiYeiFuK3Fy/kOUArUNnC5M9qtGvBVxPlAE
	 LnA6yVREroB9oec4cxqDQTZaJP/OQX1ieQBkshkOEaofAyPqH+/r09O4E+slQGUe1O
	 jVWQ0HIPAYXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B0FC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401528279.10939.17065017066512749712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8844ca5df58d8387290dc5bad9912015f357cdb67496f35a89901d3686cf976
Date: Thu, 25 Apr 2024 03:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714015282
