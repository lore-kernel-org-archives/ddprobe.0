Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E84136D
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21F50C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679724066;
	bh=ZPnsQoSKd+ZFFVrVN6xQ7RPoSrMhOSC2mKZXwcwHqUc=;
	h=To:Subject:From:Date:From;
	b=B8zNXZkZI8QgGJdMZenS8dMBMkWU/4MXXHNxMakTVx3/SStxNP8SK3lMn7YTHRS2g
	 s9pJJq2mPO9wS2v3+HNlIw/9P8avoSs7Fj7JfYqx1yea41fR1f5mmDl3tyf1jtx4ZF
	 Uzlmz+w+uscD+tW86XpQrFtTqT48bNYbfx0eGeJrzb9LU7wm1OFasVCSNeokI7I3x5
	 lvZDKmcu1ji/YQyhulQ0RKzC61s//rz4wX1ehqVqIV8NIMRfCyOCHeSclZcFetrmQF
	 oVfxQZhucer40maawQLqpPyGI4gQvT0mKXkmSILOAD8OTPWzpN60H94QTAAsxkjr7l
	 gHH5BixtmmMiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 041D2C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:01:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167972406600.14796.9975346378294057987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb95171a9c734c22666d5891686ef6e46c5b8295d9c0b2c16e3597461aca203c
Date: Sat, 25 Mar 2023 06:01:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679724066
