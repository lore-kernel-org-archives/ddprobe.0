Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C394636
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706920697; cv=none; b=JMywwGtVSO4euXnuXbsS5VpQErUI+5PuhHGLXa38X1SmDMB2XxwlegxSRUPIZl/HIM8g/wTzJ4sOWnWag0H7/0snj4QY8BG0qBSnFhCFQA5cXlCRNCYmFUL46QwYKWrBSBhKuQY9ycpUSYWhKcmxFGxR5fgV2yZ56aNJzC/98Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706920697; c=relaxed/simple;
	bh=rkwd7yRpRt3xsZWe9wv5C6NJ6j2DxdJmQeQCKFFzQ0w=;
	h=To:Subject:From:Message-Id:Date; b=kHkf6xvNf6oENyvg01AsZfh+TWGsXUsO07GnLZA+/1MfNYhDuhq3e8IboHHZxazdp4B7dk9q8UwzzAYE64quEpQCPteOBH7P9+jK0i4QPX54jf/9JAOdfPtsvlMaJgu2ws/IZS/8lvOu88c+b0xDYHkoqJTIuIutDNhVXyYwQJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf7DAYmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf7DAYmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8225DC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706920696;
	bh=rkwd7yRpRt3xsZWe9wv5C6NJ6j2DxdJmQeQCKFFzQ0w=;
	h=To:Subject:From:Date:From;
	b=tf7DAYmWwLCDyQL6dt7YDIJQgQEpZ5ZND8VsE1L6R61j4b6wZTsRhaK+6RU5xBwdO
	 te1VjuX6i4VN9QbQVLg+J+i2LeWTHyQVErphx+NtKoe2/o8mUjt7SSa/KadC5fsyAP
	 JxVfb3C1IV6sV2Vbq0ySMb3B5i6QmW2GbH6v0yFgob89VMyctPb53BQiAd2PR7zMzt
	 v5N34QrkgvQto6QiXhNTv4nLY+pIH4TP/uJt3C4b9oU6XuYTkS8rBUlRjd5meGlH/W
	 zFBLXPt/Eg+0rv3WFtYiMvtz4tUqZce8665WvbbScw7ti3/FCOAh6lG+AhQOo2Fk99
	 7lD8B4+EPWSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64119C48295
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692069637.29299.8861703937539148046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e49e85e47bdd927310f4b490012c3ebe9e51c3518d33f265d6064aa3275447
Date: Sat, 03 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706920696
