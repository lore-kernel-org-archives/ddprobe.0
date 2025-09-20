Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A1A1DFDE
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758397795; cv=none; b=m7O5cjvbXYE5g3gh80E1oeCfj59XAgWcRVh33layzmoCRRr3CMSZ6FpuNNoHqJqkbTFibYmUM5eY6RnWjerCPCUIlHRpfSS+BOca9xIhYDkHOTlB8VHHCjGJOlBykgfV/gK4OVJwZcrJ6TQi4H9T9h+WbFOgWVKsHO4HIuUu2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758397795; c=relaxed/simple;
	bh=DUqWOYyGVl/1X4eeeDJT3D+fl2UHqC0WVju2lzEE7vc=;
	h=To:Subject:From:Message-Id:Date; b=OYZiRfTZ2v0gYe+hg1QtvT26/uZgTaIkHUx6+s7U3VZRovGcG445hMBanEX5Ty6MP0+AGA9JUaWFiEj4N4YTYF2C/jEj7T/RQOT8Gvv0DqyjnIOlq/whgiy7xsT16mXaLFQZ3SCzXx2d9AAXcuKGU/se88/jxDzedsPZSo6KmkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIxF5lCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIxF5lCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758397793;
	bh=DUqWOYyGVl/1X4eeeDJT3D+fl2UHqC0WVju2lzEE7vc=;
	h=To:Subject:From:Date:From;
	b=fIxF5lCFkE6wd+LRukpKLN7r+R69XL+fbIM6Qcxpsr5ll4Pe1ajL+wwNAJLyjW0Wt
	 Yo7fYDaNeQJ2Z/+C1s0MbQ9CxVzSzdr8HKAmrFZ2gNCBDyV73gqQAgKbJop82nzS+2
	 iyptO1lZQ04yQvzzUzsCwGyF+Y3TEeY7MBm3pIiyem4ZZnVU8c7wnCuxabWXYYDw92
	 P6WEcUP8YftfMXWzei7m1hmk+688IvBNslgTOZhUMnQuksMWKDjHJDYPV+mnnqY++B
	 /Weywcw4xaKercJD96sxLK7d3CJS5UlDkc8nMozHbgB9WD1qLH32hQbn/76fwfn74Q
	 oU0zSu7CmpMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA4CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839779357.11048.8294517616902996637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1675ef481cf11a53898a662f41c9514afb7068635f6f95de092cffaceb3abb40
Date: Sat, 20 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758397793
