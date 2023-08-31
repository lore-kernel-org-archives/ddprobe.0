Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6323915A0
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD218C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693452248;
	bh=aaUuoulRPND34dID18CEoMn+IL64nSOVIZEj+RKf4os=;
	h=To:Subject:From:Date:From;
	b=WASZKS7G7Abo50F4Y2dreM7KE+ZVBL/X1l8KaEa00bgd/oNqQ1lZiM1sqLhy5znoN
	 2jr87BiRwYtgyPdWYj2bnyyAHShAZ3tR516cyXn87vMG8RZ9dfwDfocJpMLBPiIlJR
	 e2QKkiLa2Ul27Vq+TYr+aSTn+Ae7ZdKA4gfeqb4eFeHH6q3PFVXtgnN+fN5s/5QRPc
	 9v9sThC2OMzCAxryS2KZQPCm/Eal7OZflECGWJdWRTajKLPvApiLZNRIg5VnNaBzLj
	 Oxi4CO2NxAyHFKcIgCnNQ5AGWBgMOOalXHEITwFWppu1kot7mh5/7PX+xmEp+ayW/G
	 y0Fx4kDeGr4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6CFC83F15
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169345224871.14867.6790014558987879383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f87c601370e35e79734ab099cf72069f0187a9e11c90696635482c32e6e7494
Date: Thu, 31 Aug 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693452248
