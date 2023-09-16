Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FEE3C38
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 14:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8100C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694875508;
	bh=sQDJadriTW+zCgiP1McM/KMgKW8uC+qfY14elu0s34A=;
	h=To:Subject:From:Date:From;
	b=mgf9rno0mbw26IaWTJnzwJxesNT+HC9TD/nf7pK/jippdcN6rAnYIyyC7W2gbC1dY
	 0CePubqs5Od+7S0dGabwpHeWXl9MiOxnEf8A2p4MqqxsUPxI+1oSslxLBI9d38j478
	 mcEmK30rEo2oQ4JUkQBWHbSpsUJcJyX9gzammpn9YDABvUQyrlE1j2kJdrlIyevwe6
	 8+sq3illJKPCBbncWTae+g0juykJfmLG+SvLRWQjqfTeRh/yAs3ElEsQ28ALCv+j0F
	 dwWCwmn443QwO1JV9FVBSlTOHixbNtqbhzx9N+V4LCKIrRMIsSDEEKAOm5lXZY7Ixw
	 8jswFD9QgZanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F5FCD37BC
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 14:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169487550866.22845.4802988451894456025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76aaed241ae4282d3fe937f3e68cd09e049bed61b2ec32bb8d0ba828e0ac1f49
Date: Sat, 16 Sep 2023 14:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694875508
