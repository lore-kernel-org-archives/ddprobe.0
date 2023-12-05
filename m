Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D528F75
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwD6x70l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77506C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701748696;
	bh=vqSZcRef5mN1+DQCZZOWzYTJYPuUgeGMkgcz/enQ+8M=;
	h=To:Subject:From:Date:From;
	b=DwD6x70l9Rxl9wEhu+rtemYYZCrquNlRapGnzhbmahe5ZRNp8UeiyMV8QtQ/JZ4u3
	 HyZ+Mt4I4KYq77JZx79+Ae8EGY7BQ8yVhpkFUB64CnpXAnyK6aAfFV3SO3l6LKdUwl
	 ry0f7OBZgI3kdqONWfVsfQsImx2s1xLu1ax1CGkNVA8f+bXiCPhdrRPXIgoN/43ay9
	 Xwg6UIvz2Xwm3HxYVl4QCO6DWX22EplIQEnF6+pebngUKJK1nSFn9r++I3DzzjPmrO
	 Vq0maUVUqBbMHqofENgO9o+HI6uIvHJ/LiGbyaXvFBmjlqql/JcZTGm/9toZiyLxij
	 VvHcgENuI80TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D403C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170174869637.1158.9829609295263799540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a18bc58050904f80a2ee74912b74f5e9f9d21babe8a9b76149e3cf60e5922e7
Date: Tue, 05 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701748696
