Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B34BE4A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746932994; cv=none; b=Hqi/3ZLCTQx1bHtWwlBduncHcRrVz/YZef9xlI8/DvypmQIxOpBu3LY3pDkyJdWORW5qeIGOk3qLAu5Skd/CDaxAq9t7ahXqG5leOilXeSwH5xjtq5ks1tLrfIHu+GmA97nGZctdSEGXqI0hXFO6GYOTacBs3unqBZHcY7rhgAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746932994; c=relaxed/simple;
	bh=VFMJA01feJMPSFgfs2X/abL/v5seGfYUgAwkZE6OwyM=;
	h=To:Subject:From:Message-Id:Date; b=K0z8p3a4y8CCzy7VegRlXgD/Cn6T2K2xQj+tB7jiprbMtuzcEDMilZQVZ+Hft2UQPdSK9ZuBQkwxlDDE8av2bZ/owFdnxpt1YV4xVaPQDHO3Hqc9Ciwh3/C+mQhYGgvcpwGWRGHkg7vwS1R5WjNMf9PCLbntQKJ71J57Dk2QWmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xks7Lg+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xks7Lg+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3160C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746932993;
	bh=VFMJA01feJMPSFgfs2X/abL/v5seGfYUgAwkZE6OwyM=;
	h=To:Subject:From:Date:From;
	b=Xks7Lg+r3sMcN2YtNS3dXDwAQjodRCvbUm8OgS3Hith4dmUhfL6fM4oS0DqmZUJWw
	 81Q1eIcY53LqcDmjdsuqHirL2TLbiSK2XrmFvYOHtCrw2tbUXVn8SUrpVAzm97ylNV
	 m3eLlSKyby/LDAsex0V1d2tihV9i9atm0dBb+I+p0nJOK8CrLJev22ao/6I8DHt8Vl
	 MqGqZD0nVkvXL4GXgrNx7grIzSugNu7n7gwN8Zn/Q3q2p1lB4SkEVjXCxVon907jHB
	 BgekSC+FHzKmVvsUii3lvelaC4sUw1/AmrWl8yRUWFYlbTQJI7a4m1GeQfpSFhJHMg
	 NB8euJPfFxFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93070C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693299357.25188.3090109066666077921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef91bae29582774314e4b15ff7ded8b5d3331ced232e2fab6888f6a0882365e2
Date: Sun, 11 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746932993
