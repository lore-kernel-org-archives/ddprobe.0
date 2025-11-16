Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF52214813
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763289653; cv=none; b=LBv+hFJ/krX8MvCGKMnBnCSsHjwXt9hfxgp3GK22O5/WbPEvBCjmBvCbcy0JvB/DOwSFVk1dAWcudvudb3B6X/3Ril/vsQxVT+bQF8mZW7s8cmr9p4qO9PFIkqzunOVV3GiytEerE6xwRtdKuztNpwDMft7K701QyPysmgk57y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763289653; c=relaxed/simple;
	bh=GG2f2ThEbA+1wvnpjkkn8cPlh6DiNrEkiPKiyakV1Wg=;
	h=To:Subject:From:Message-Id:Date; b=pD9o0GviUP6KoShsryzBlUd9vY3MrUTsOR4yBDcPos3rM7Uxt12ux7U832oamrcvmb7WQPN+LKZJPn8gAlNbFwYRVzWIjCGF3V2melE1nqIt4Ij9Ab9L/Q/oIC+70AYqkBVsQI7Hh3r8KwT10A8bBZEfVL7jz/Urc4IK6GHGGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1Tpb/QJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1Tpb/QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCBEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763289653;
	bh=GG2f2ThEbA+1wvnpjkkn8cPlh6DiNrEkiPKiyakV1Wg=;
	h=To:Subject:From:Date:From;
	b=Z1Tpb/QJUys1fGdcnsxc3APWe5ROThOckqe5VGXPrW3PO5cDIuzF5ICi+vzZQ6mAJ
	 0HuUlaV3dONdSHgXig/DkGsbBkw7XIDXU/7FniFZBJjhplZ2t7lI42aY1EAtHMRM5n
	 WQ5VRygk41uHni2bAjeJpz1Ti1++qNankgK4U1lzOfdLAqA0FZj82w40BzGVJORo6z
	 Y2JmGFLnsnGS1F/rae7ivMcsNRCBlVn1fgOtaMTLI8cI1noPIavs7ToJCyBplSIJ1B
	 3e2yiAaBNhVAbJpN7GrHhcXxWt2GZfykLcSFhEAvHN3xE15q2jFwYOJAChTqWdoeLr
	 SlzFGknwBumFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F889CEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328965358.2287.7815056226421025004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed31990d9150896c70904caafa84c9f19586abaa0ff48197e08f0ea2e33d465
Date: Sun, 16 Nov 2025 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763289653
