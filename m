Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07978635
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2kruY81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B28C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702363096;
	bh=rkR1WqoA1la8Do4yp/YREhWEt4NRqaHtK7Ysozf+v0w=;
	h=To:Subject:From:Date:From;
	b=G2kruY81CDGw/vz+fwl0gSNZKGa/BmKxMuYRWY4qJp6grFqOn1rxeH3rPfFy/xC1O
	 7N0NSHiUYQ09ireHutA/BYOu/U0htIvaypKJk2Y0BOILsESMCzx4yWZlCwlZm0AYOh
	 1+v5rXqwR5zlK6PEm1d06hT8rPs0Kf0Wec4X2eBGd5jI5iffbzOWeTevOl5MLSoylw
	 gSJxOj8mSpMHy2TQ3J3t/7dY7uzGo3pBq2bwUbhPJWYoVSM8xsW+EaKkmRnqZf9LRe
	 rP0WYfSHywYhIB8OtD4+vE/fuLKVK1hGUc2P/YocIo3XJlBq8B166drDhoptRmzghg
	 VZ9QBfZy694Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C087C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236309637.7734.17892473536668649069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72b283befd499a4d16d7b3c53440fa0203fe01c2d548b42c2d234ed6922ad03
Date: Tue, 12 Dec 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702363096
