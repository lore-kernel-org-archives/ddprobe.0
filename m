Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCB113D52C
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728852954; cv=none; b=Yk95lUiMat2HrYVmzLrLG5hKRVqxuYBQibC9twuj/bhZtI9J4bG831qcpyX90KAZ8wgToE4heaWbckliFbr65KDNeP2nr/+W8Kodn2qFl9wBD8GNNb37DEqGuMy3sDOLQ5J38wSMhTJmV/Z0Z8P2xrMmuH6ZckCBZLqJPV39hdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728852954; c=relaxed/simple;
	bh=W8DbHH1537CUjGtcPjXVyYgL8gI3WjLAx+dDHSNolC0=;
	h=To:Subject:From:Message-Id:Date; b=uLu4bMHkTgFhUcj8GC7/34vdo+IKg5EnpAUJgxr13XC/RsV9q27jwsrIAz9MmVg1igTKptyyadjMtyqOkJM3Q0iL5kFuJ1M3GUlFixfFINSP5cryA3biDo+5CqWbWMIqduC0cGyMjdeS6fov7ZAFcrw8hmc62IvTsJqrSzNoJnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzH+plO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzH+plO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA96EC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728852953;
	bh=W8DbHH1537CUjGtcPjXVyYgL8gI3WjLAx+dDHSNolC0=;
	h=To:Subject:From:Date:From;
	b=dzH+plO/sJPZBzHtC0KNTV5pdCdOCBGe4hBI253uEpcZmF+1uRuXGhOUFOJuvs9Ck
	 uRgaEeL/N0ETVIeYugrA7XvpQ/Pvb7q+q1Gi+zklPT6AyW3UvbFWbdU7ZUXP7Us3Ip
	 SQvPUqgLB7j9Cjw+kK9ilMvq6J3h2ErFHAX+yVfYJoPuuGRlqzGflFYuSHcO/Bq38f
	 lqH8J0CpzNM4Eut2Jmh8Ie9mGdDXlo+eEkfIXN7LEea4FPlmotuzHTXKczSYewE1Ww
	 2wUkd0UerIHBYdoJxIpKD0GI7BzAmKQbtOYAuDdTba/lqikvu997Sry053d1+zI/rm
	 H8KKJcXOXluWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ABDCF258D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885295364.9041.986199190992919622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa095db19a95acef9d4bdad17c2d270de3787dcd86ed4391301e5c6a68374c51
Date: Sun, 13 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728852953
